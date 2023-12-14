$MyModulePath = "C:\Users\Noel\OneDrive - Atlantic TU\Documents\College\Code in Infrastuture\PowerShell-\Modules\HelloWorld"

$MyModule = @"
# HelloWorld.PSM1
Function Get-HelloWorld {
 "Keep her Country!!"
}
"@

New-Item -Path $MyModulePath -ItemType Directory -Force | Out-Null
$MyModule | Out-File -FilePath $MyModulePath\HelloWorld.PSM1
Get-Module -Name HelloWorld -ListAvailable