
@description('Location for all resources.')
param location string = resourceGroup().location

param tags object = {
    App             :'POC'
    Owner           :'Infra-team'
    Confidentiality :'Sensitive'
    CostCenter      : 'Infra-team'
    Env             :'Innovation'
    BusinessImpact  : 'Low'
}

var addressPrefix = '10.0.0.0/16'
var subnetName = 'Subnet'
var subnetPrefix = '10.0.0.0/24'
var virtualNetworkName = 'VirNet'

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2022-05-01' = {
  name: virtualNetworkName
  location: location
  tags:tags
  properties: {
    addressSpace: {
      addressPrefixes: [
        addressPrefix
      ]
    }
    subnets: [
      {
        name: subnetName
        properties: {
          addressPrefix: subnetPrefix
        }
      }
    ]
  }
}
