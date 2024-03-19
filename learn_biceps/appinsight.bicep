resource myappinsight 'Microsoft.Insights/components@2020-02-02' = {
  name: 'myinsight09'
  location: resourceGroup().location
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}
