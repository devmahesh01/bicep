resource myapp01 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'myappp099'
  location: resourceGroup().location
  sku: {
    name: 'F1'
    capacity: 1
  }
}
resource myapp019 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'myappp039'
  location: resourceGroup().location
  kind:'linux'
  properties: {
   reserved: true 
  }
  sku: {
    name: 'F1'
    capacity: 1
  }
}
