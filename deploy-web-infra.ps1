# deploy-web-infra.ps1
$rg = "Ahmad-Project07-RG"
$loc = "southindia"

# 1. Automate Network Settings
Write-Host "Creating Virtual Network..."
$vnet = New-AzVirtualNetwork -ResourceGroupName $rg -Name "ahmadmushabbir-vnet" -AddressPrefix "10.0.0.0/16" -Location $loc

# 2. Automate App Service Deployment
Write-Host "Creating Web App Plan..."
New-AzAppServicePlan -ResourceGroupName $rg -Name "ahmadmushabbir-plan" -Location $loc -Tier "Free"
