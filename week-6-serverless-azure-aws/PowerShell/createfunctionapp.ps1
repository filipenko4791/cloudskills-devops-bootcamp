# Build an Azure Function using PowerShell and Azure CLI
function createFunctionApp {
    param (
        # Parameter für Resource Group Name
        [parameter(Mandatory)]
        [string]
        $RGName,

        # Parameter help description
        [parameter(Mandatory)]
        [string]
        $name,

        # Parameter for naming the storage account
        [Parameter(Mandatory)]
        [string]
        $storageAccountName
    )
    
    az storage account create --name $storageAccountName `
                              --resource-group $RGName

    $plan = az functionapp plan create -g $RGName `
                                -n $($name + 'plan') `
                                --min-instances 1 `
                                --max-burst 5 `
                                --sku EP1
    $plan

    az functionapp create -g $RGName `
                          -n $name `
                          -p $($name + 'plan') `
                          --runtime powershell `
                          -s $storageAccountName `
                          --functions-version 2
}   