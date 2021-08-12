targetScope = 'subscription'
param location string = deployment().location
param rgName string
param tagValues object
resource rg 'Microsoft.Resources/resourceGroups@2020-06-01' = {
  location: location
  name: rgName
  tags: tagValues
}
output rgId string = rg.id
output rgName string = rg.name
