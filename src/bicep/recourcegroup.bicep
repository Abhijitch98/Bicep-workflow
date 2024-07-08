targetScope = 'subscription'

@description('Location for all resources.')
param location string

@description('Name of the virtual machine.')
param Resourcegroupname string 

resource resourceGroup 'Microsoft.Resources/resourceGroups@2023-07-01' = {
  name: Resourcegroupname
  location: location
}
