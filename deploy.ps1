$projectName=$args[0]
if ([string]::IsNullOrEmpty($projectName)){
    Write-Host "Debe de indicar el nombre del projectName, en minuscula" -ForegroundColor Yellow
}
else{
    .\dockerbuild.bat $projectName
    .\k8.bat 
}