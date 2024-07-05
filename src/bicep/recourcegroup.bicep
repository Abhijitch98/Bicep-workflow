targetScope = 'subscription'

@description('Location for all resources.')
param location string

@description('Name of the virtual machine.')
param Resourcename string 

resource resourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'Resourcename'
  location: location
}
