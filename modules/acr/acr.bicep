param acrName string
param tagValues object
resource acr 'Microsoft.ContainerRegistry/registries@2020-11-01-preview' = {
  name: acrName
  location: resourceGroup().location
  sku: {
    name: 'Premium'
  }
  properties: {
    adminUserEnabled: true
  }
  tags: tagValues
}

output acrid string = acr.id
