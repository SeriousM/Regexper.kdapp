KD.enableLogs()

# namespaces
RegexperKdapp =
  Model:  null
  View:   null


{nickname} = KD.whoami().profile

baseUrl = "https://#{nickname}.koding.com/.applications/regexper/resources/javascripts/"

require.config
  paths        :
    "eve"      : baseUrl + "eve"
  packages     : [
      {
        name     : "raphael"
        location : baseUrl + "raphael"
        main     : "raphael.amd"
      },
      {
        name     : "regexper"
        location : baseUrl + "regexper"
      }
    ]