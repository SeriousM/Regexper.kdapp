KD.enableLogs()

app = null

do ->
  try
    appView.addSubView app = new Regexper.Views.Main
      cssClass  : "regexper"

  catch error
    new KDNotificationView
      title: error