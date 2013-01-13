app = null

do ->
  try
    appView.addSubView app = new RegexperKdapp.View
      cssClass  : "regexper"

  catch error
    new KDNotificationView
      title: error