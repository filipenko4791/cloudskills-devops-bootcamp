[CmdletBinding()]
param (

    $name = 'filipenko-k8s-aks',
    $rgName = 'filipenko-devopsbootcamp',
    $nodeCount = 1,
    $kubernetesVersion = '1.21.1'
)

az aks create --generate-ssh-keys `
              --name $name `
              --resource-group $rgName `
              --node-count $nodeCount `
              --kubernetes-version $kubernetesVersion