
class RegexperKdapp.Model

  constructor:->
    
    @kc         = KD.getSingleton "kiteController"
    {@nickname} = KD.whoami().profile

  parse:(regex, output, callback)->
    
    appDir = "/Users/#{@nickname}/Applications/Regexper.kdapp/"
    
    @kc.run appDir + "bin/regexper '#{regex}'", (err, res)->
      $(output).html('')
      
      require ['regexper'], (Regexper)->

        data = JSON.parse(res)
        
        if (data['error'])
          $(output).html(data['error'])
          callback()
        else
          Regexper.draw output[0], data, ->
            callback()