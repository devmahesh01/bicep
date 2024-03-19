resource myapp01 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: 'myappp099'
  location: resourceGroup().location
  sku: {
    name: 'S1'
    capacity: 1
  }
}

resource webApplication 'Microsoft.Web/sites@2021-01-15' = {
  name: 'myappweb01'
  location: resourceGroup().location
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/appServicePlan': 'myappp099'
  }
  properties: {
    serverFarmId: resourceId('Microsoft.Web/serverfarms' , 'myappp099')
  }
  dependsOn: [
    myapp01
  ]
}

