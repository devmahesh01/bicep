resource webApplication 'Microsoft.Web/sites@2021-01-15' = {
  name: 'myappweb01'
  location: resourceGroup().location
  tags: {
    'hidden-related:${resourceGroup().id}/providers/Microsoft.Web/serverfarms/appServicePlan': 'myappp099'
  }
  properties: {
    serverFarmId: resourceId('Microsoft.Web/serverfarms', 'myappp099')
  }
}

resource myappweb011 'Microsoft.Web/sites/config@2023-01-01' = {
  name: 'appsettings'
  parent: webApplication
  properties: {
    appSettings: [
      {
        name: 'key1'
        value: 'value2'
      }
    ]
  }
}

