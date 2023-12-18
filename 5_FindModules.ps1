# Find all modules in the PowerShell Gallery
$PGSM = Find-Module -Name *

# Display the count of modules in the PowerShell Gallery
"There are {0:N0} Modules in the PS Gallery" -f $PGSM.Count
