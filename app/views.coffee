
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
      cssClass: "regexper-output"
    
    @output.setPartial "Type in JavaScript-like regular expression into the field above!"
  
  submit:(formData)->
    
    self = @
    {regex} = formData
    model = new RegexperKdapp.Model
    model.parse regex, @output.getDomElement(), ->
      self.form.buttons["Please Help!"].hideLoader()
  
  viewAppended:->
    
    super
    
    @addSubView header = new KDHeaderView type : "big", title : "Regexper <span>Credits: Jeff Avallone (<a href=\"http://regexper.com\" target=\"_blank\">Regexper.com</a>)</span>"
    @addSubView @form
    @addSubView @output