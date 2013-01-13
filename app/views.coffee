
class RegexperKdapp.View extends KDView
  
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
          validate        :
            rules         :
              required    : yes
    
    @form.on "FormValidationFailed", => @form.buttons["Please Help!"].hideLoader()
    
    @output = new KDScrollView
      domId: "regexper-output"
  
  submit:(formData)->
    
    self = @
    {regex} = formData
    model = new RegexperKdapp.Model
    model.parse regex, $('#regexper-output'), ->
      self.form.buttons["Please Help!"].hideLoader()
  
  viewAppended:->
    
    super
    
    @addSubView header = new KDHeaderView type : "big", title : "Regexper"
    @addSubView @form
    @addSubView @output