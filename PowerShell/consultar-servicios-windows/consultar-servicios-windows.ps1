#Servicios ejecutados
$servicios_activos = Get-Service | Where-Object {
    $_.Status -eq "Running"
}

#Lista de los servicios
Write-Host "Servicios activos:"
Write-Host ""

$servicios_activos | Select-Object Name, DisplayName, Status | Format-Table -AutoSize

#Cantidad de servicios activos
Write-Host "Total de servicios activos:" $servicios_activos.Count
