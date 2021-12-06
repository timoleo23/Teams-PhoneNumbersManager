Param(
    [Parameter(Mandatory=$true,HelpMessage="You must enter function hostname with argument -hostname [host URI]")][string]$hostname,
    [Parameter(Mandatory=$true,HelpMessage="You must enter function code with argument -code [function code]")][string]$code,
    [Parameter(Mandatory=$true,HelpMessage="You must enter function code with argument -UPN [UPN]")][string]$upn,
    [Parameter(Mandatory=$false)][int]$workers  = 4,
    [Parameter(Mandatory=$false)][int]$maxRetry = 3
)

Write-Host "Azure Function warm-up using API call"
$echoUri = 'https://' + $hostname + '/api/Get-UserInfos?SearchString=' + $upn + '&code=' + $code
Write-Host $echoUri

function generateConfig ([string]$hostname,[string]$code,[string]$UPN,[int]$workers) {
    $config = @()
    $uri = $hostname + '/api/Get-UserInfos' + '?SearchString=' + $UPN + '&code=' + $code
    for($i = 0; $i -lt $workers; $i++){ 
        $config += New-Object -TypeName psobject -Property @{ID= $i+1; URI= $uri}
    }  
    return $config
}

function checkStatus($jobStatus) {
    $check = $true
    foreach ($item in $jobStatus) {
        if ( ($item.StatusCode -ne 200) -OR ([string]::IsNullOrWhiteSpace($item.StatusCode))) { 
            $check = $false
        }
    }
    Return $check
}

($jobresult.StatusCode -ne 200) -OR ([string]::IsNullOrWhiteSpace($item.StatusCode))  

$retries = 0
$jobresults = @()
Do
{
    Write-Host "Function warm-up started at" $(Get-Date) "- Attempt #" ($retries+1)
    $job = generateConfig $hostname $code $upn $workers $retries | ForEach-Object -ThrottleLimit $workers -Parallel { 
        $timeout = 120
        $start = Get-Date
        $Result = Invoke-WebRequest -URI $_.URI -Method 'Get' -TimeoutSec $timeout -MaximumRetryCount 1
        $finish = Get-Date
        $duration = ($finish - $start).TotalSeconds
        $Resp = New-Object -TypeName psobject -Property @{Duration= [Math]::Round($duration,2); StatusCode= $Result.StatusCode; StatusDescription= If($duration -gt $timeout) {"Request timed out ($timeout sec)"} Else {$Result.StatusDescription};TriggerTime= (Get-Date -DisplayHint Time);WorkerId=$_.ID}
        return $Resp
    } -AsJob
    $jobresult = $job | Wait-Job | Receive-Job
    $jobresults += $jobresult

    $test = checkStatus($jobresults)
    If ($test -EQ $FALSE) {
        Write-Host "Sleeping for 60s before retrying"
        Start-Sleep -Seconds 3
    }

    $job | Remove-Job
    $retries +=1
}
until( ($test -EQ $TRUE) -OR ($retries -ge $maxRetry))

If ($retries -ge $maxRetry) {
    Write-Host "Reached max retries - Function app still not warmed up - Please restart the script or check error messages"
}
$jobresults | Sort-Object TriggerTime | Format-Table TriggerTime,WorkerId,Duration,StatusCode,StatusDescription


