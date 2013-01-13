
class RegexperKdapp.Model

  constructor:->
    
    require.config
      baseUrl: "https://halk.koding.com/regexperjs/"
    
    @kc         = KD.getSingleton "kiteController"
    {@nickname} = KD.whoami().profile

  parse:(regex, output, callback)->
    
    appDir = "/Users/#{@nickname}/Applications/Regexper.kdapp/"
    
    @kc.run appDir + "bin/regexper '#{regex}'", (err, res)->
      output.html('')

      require ['regexper'], (Regexper)->
        
        _callback = =>
          require.config
            baseUrl: "/js"
            
          callback()

        data = JSON.parse(res)
        
        if (data['error'])
          output.html(data['error'])
          _callback()
        else
          Regexper.draw output, data, ->
            _callback()