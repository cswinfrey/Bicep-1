param basename string

resource logworkspace 'Microsoft.OperationalInsights/workspaces@2020-10-01' = {
  name: '${basename}-workspace'
  location: resourceGroup().location
  tags: {
    Dept: 'Finance'
    Environment: 'Production'
  }
}

output laworkspaceId string = logworkspace.id
