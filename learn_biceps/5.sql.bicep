resource sqlServer 'Microsoft.Sql/servers@2014-04-01' ={
  name: 'testsql023'
  location: resourceGroup().location
  properties: {
    administratorLogin: 'azureadmin01'
    administratorLoginPassword: 'admin@12345678'
  }
}




resource sqlServerFirewall 'Microsoft.Sql/servers/firewallRules@2021-02-01-preview' = {
  parent: sqlServer
  name: 'myname'
  properties: {
    startIpAddress: '132.154.0.37'
    endIpAddress: '132.154.0.37'
  }
}





resource sqlServerDatabase 'Microsoft.Sql/servers/databases@2014-04-01' = {
  parent: sqlServer
  name: 'testdatabase099'
  location: resourceGroup().location
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
    edition: 'Basic'
    maxSizeBytes: '1073741824'
    requestedServiceObjectiveName: 'Basic'
  }
}
