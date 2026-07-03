$ResourceGroup = "Ahmad-Project07-RG"

$StorageName = "ahmadproject07storage"

$Location = "South India"

New-AzStorageAccount -ResourceGroupName $ResourceGroup -Name $StorageName -SkuName Standard_LRS -Location $Location
