### Author: Nicholas Santos
### This is for dev only... once i fix things we'll use in prod
### Jan 28, 2022.

#Define your API Key and Org ID
$apiKey = ''
$orgID = ''

#Define the URL to pull data from using your info above
$uri = "https://console.automox.com/api/servers?o=$orgID&api_key=$apiKey"

#Retrieve server data for the org and export to CSV
$responseJson = (Invoke-WebRequest -Uri $uri).Content | ConvertFrom-Json
$responseJson | Export-Csv C:\Temp\MyFile.csv
