$user=Read-Host "Usuario"
$pass=Read-Host "Contraseña"

$usuario=ls C:\Users\Andy\Documents\AA-Retamar\ISO\powershell\login\usuarios\ -name
$contraseña=Get-Content C:\Users\Andy\Documents\AA-Retamar\ISO\powershell\login\usuarios\$usuario

if($user -eq $usuario -and [System.Web.Security.FormsAuthentication]::HashPasswordForStoringInConfigFile($pass, "MD5") -eq $contraseña)
{
Write-Host login correcto
}
