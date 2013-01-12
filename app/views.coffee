
class Regexper.Views.Main extends KDView
  
  constructor:->
    
    super
    
    @form = new KDFormViewWithFields
      callback            : @submit.bind(@)
      buttons             :
        visualize         :
          title           : "Please Help!"
          style           : "cupid-green"
          type            : "submit"
          loader          :
            color         : "#444444"
            diameter      : 12
      fields              :
        regex             :
          label           : "RegEx"
          name            : "regex"
    
    @output = new KDScrollView
      id: "regexper-output"
  
  submit:(formData)->
    
    self = @
    {regex} = formData
    model = new Regexper.Models.Regexper
    model.parse regex, (result)->
      self.output.setPartial result
      self.form.buttons["Please Help!"].hideLoader()
  
  viewAppended:->
    
    super
    
    @addSubView header = new KDHeaderView type : "big", title : "Regexper"
    @addSubView @form
    @addSubView @output