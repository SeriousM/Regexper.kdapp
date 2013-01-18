KD.enableLogs()

# namespaces
RegexperKdapp =
  Settings : null
  Model    : null
  View     : null

# settings
RegexperKdapp.Settings =
  Examples: [
    {
      title: ""
      regex: ""
    }
    {
      title: "Date"
      regex: /^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$/
    }
    {
      title: "Phone Numbers"
      regex: /^([0-9]( |-)?)?(\(?[0-9]{3}\)?|[0-9]{3})( |-)?([0-9]{3}( |-)?[0-9]{4}|[a-zA-Z0-9]{7})$/
    }
    {
      title: "Credit Card BIN Numbers"
      regex: /^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$/
    }
    {
      title: "US & Canada ZIP Codes"
      regex: /(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$)/
    }
  ]

# requirejs config
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