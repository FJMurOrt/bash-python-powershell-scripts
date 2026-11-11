#Unidades
$unidades = Get-PSDrive -PSProvider FileSystem

#Info de las unidades
foreach ($unidad in $unidades) {

    $espacioLibreGB = [math]::Round($unidad.Free / 1GB, 2)
    $espacioUsadoGB = [math]::Round($unidad.Used / 1GB, 2)

    Write-Host "Unidad:" $unidad.Name
    Write-Host "El espacio libre disponible es:" $espacioLibreGB "GB"
    Write-Host "El espacio usado es:" $espacioUsadoGB "GB"
}