$configuraciones = Get-NetIPConfiguration

foreach ($configuracion in $configuraciones) {
    
    Write-Host "Adaptador:" $configuracion.InterfaceAlias

    Write-Host "Direccion IP:"
    $configuracion.IPv4Address.IPAddress

    Write-Host "Puerta de enlace:"
    $configuracion.IPv4DefaultGateway.NextHop

    Write-Host "Servidores DNS:"
    $configuracion.DNSServer.ServerAddresses
}