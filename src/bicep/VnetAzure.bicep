param  virtualNetworkName string
param location string
param address_space array
param tags object
@description('Name of the subnet within the virtual network where the virtual machine is deployed.')
param  subnetNames array
@description('Address prefix for the subnet within the virtual network.')
param subnetPrefix array

resource VNetwork 'Microsoft.Network/virtualNetworks@2021-02-01' = {
  name: virtualNetworkName
  location: location
  tags: tags
  properties: {
    addressSpace: {
      addressPrefixes: address_space
      
    }
    subnets: [for (subnetNames, Index) in subnetNames: {
      name:subnetNames
      properties:{
        addressPrefix:subnetPrefix[Index]
      }
    }]
  }
}
output vnet_id string = VNetwork.id
