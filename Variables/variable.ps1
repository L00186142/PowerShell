# Creating a variable
$Rubbish = 1, 2, "a", "££"
$Rubbish
clear-variable -Name Rubbish
$Rubbish
Remove-Variable -Name Rubbish

# Creating a variable with fixed type
$Rubbish = 1, 2, "a", "££"
$Rubbish.GetType()

[int]$Rubbish = 1
$Rubbish.GetType()

[int]$Rubbish = 1
$Rubbish = "123456789"
$Rubbish

[int]$Rubbish = 1
$Rubbish = "This will give you an error!"
$Rubbish

[datetime]$OGGI = "11/13/2022"
$OGGI

$dir_listing = Get-ChildItem c:\
$dir_listing

New-Variable JORzVariable -value 3.142 -description "PI with write-protection" -option ReadOnly
Get-Variable JORzVariable