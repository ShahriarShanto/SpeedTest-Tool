# Keep printing latency information

while ($true) {
    Clear-Host

    $TargetIP = "103.140.3.8"
    $ping = Test-Connection -ComputerName $TargetIP -Count 1 -ErrorAction SilentlyContinue

    if ($ping) {
        $rtt = [math]::Round($ping.ResponseTime)
		$barLength = [math]::Floor($rtt / 10)
        $bar = '=' * $barLength

        if ($rtt -le 50) {
            Write-Host "Singapore  $bar $rtt ms" -ForegroundColor DarkGreen
        }
		elseif ($rtt -le 65) {
            Write-Host "Singapore  $bar $rtt ms" -ForegroundColor Green
        }
        elseif ($rtt -le 85) {
            Write-Host "Singapore  $bar $rtt ms" -ForegroundColor Yellow
        }
		elseif ($rtt -le 100) {
            Write-Host "Singapore  $bar $rtt ms" -ForegroundColor Magenta
        }
		elseif ($rtt -le 150) {
            Write-Host "Singapore  $bar $rtt ms" -ForegroundColor Red
        }
        else {
            Write-Host "Singapore  $bar $rtt ms" -ForegroundColor DarkRed
        }
    }
	
	$TargetIP = "139.84.162.200"
    $ping = Test-Connection -ComputerName $TargetIP -Count 1 -ErrorAction SilentlyContinue

    if ($ping) {
        $rtt = [math]::Round($ping.ResponseTime)
		$barLength = [math]::Floor($rtt / 10)
        $bar = '=' * $barLength

        if ($rtt -le 50) {
            Write-Host "India      $bar $rtt ms" -ForegroundColor DarkGreen
        }
        elseif ($rtt -le 65) {
            Write-Host "India      $bar $rtt ms" -ForegroundColor Green
        }
		elseif ($rtt -le 85) {
            Write-Host "India      $bar $rtt ms" -ForegroundColor Yellow
        }
		elseif ($rtt -le 100) {
            Write-Host "India      $bar $rtt ms" -ForegroundColor Magenta
        }
		elseif ($rtt -le 150) {
            Write-Host "India      $bar $rtt ms" -ForegroundColor Red
        }
        else {
            Write-Host "India      $bar $rtt ms" -ForegroundColor DarkRed
        }
    }
	
	$TargetIP = "45.63.121.228"
    $ping = Test-Connection -ComputerName $TargetIP -Count 1 -ErrorAction SilentlyContinue

    if ($ping) {
        $rtt = [math]::Round($ping.ResponseTime)
		$barLength = [math]::Floor($rtt / 10)
        $bar = '=' * $barLength

        if ($rtt -le 50) {
            Write-Host "Japan      $bar $rtt ms" -ForegroundColor DarkGreen
        }
        elseif ($rtt -le 65) {
            Write-Host "Japan      $bar $rtt ms" -ForegroundColor Green
        }
		 elseif ($rtt -le 85) {
            Write-Host "Japan      $bar $rtt ms" -ForegroundColor Yellow
        }
		 elseif ($rtt -le 100) {
            Write-Host "Japan      $bar $rtt ms" -ForegroundColor Magenta
        }
		 elseif ($rtt -le 150) {
            Write-Host "Japan      $bar $rtt ms" -ForegroundColor Red
        }
        else {
            Write-Host "Japan      $bar $rtt ms" -ForegroundColor DarkRed
        }
    }
	
	$TargetIP = "45.63.19.88"
    $ping = Test-Connection -ComputerName $TargetIP -Count 1 -ErrorAction SilentlyContinue

    if ($ping) {
        $rtt = [math]::Round($ping.ResponseTime)
		$barLength = [math]::Floor($rtt / 10)
        $bar = '=' * $barLength

        if ($rtt -le 60) {
            Write-Host "NY, USA    $bar $rtt ms" -ForegroundColor DarkGreen
        }
        elseif ($rtt -le 75) {
            Write-Host "NY, USA    $bar $rtt ms" -ForegroundColor Green
        }
		elseif ($rtt -le 150) {
            Write-Host "NY, USA    $bar $rtt ms" -ForegroundColor Yellow
        }
		elseif ($rtt -le 150) {
            Write-Host "NY, USA    $bar $rtt ms" -ForegroundColor Magenta
        }
		elseif ($rtt -le 150) {
            Write-Host "NY, USA    $bar $rtt ms" -ForegroundColor Red
        }
        else {
            Write-Host "NY, USA    $bar $rtt ms" -ForegroundColor DarkRed
        }
    }
	
	Start-Sleep -Seconds 4
}
