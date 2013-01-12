
class Regexper.Models.Regexper

  constructor:->
    
    @kc         = KD.getSingleton "kiteController"
    {@nickname} = KD.whoami().profile

  parse:(regex, callback)->
    
    appDir = "/Users/#{@nickname}/Applications/Regexper.kdapp/"
    
    @kc.run appDir + "bin/regexper '#{regex}'", (err, res)->
      callback res