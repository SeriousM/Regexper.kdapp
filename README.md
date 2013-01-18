# Regexper for Koding

You find [regular expressions](http://en.wikipedia.org/wiki/Regular_expression) a hard nut to crack? Let Regexper visualize that for you. How? A picture is worth a thousand words, see the screenshot below.

**Credits:** Regexper for [Koding](http://koding.com) is an app based on [Regexper](https://github.com/javallone/regexper) by [Jeff Avallone](https://github.com/javallone). I kind of packed Jeff's work into a Koding app. So kudos go to him, Thanks Jeff!

## How do I install Regexper for Koding?

Once this app is accepted to the Koding App Store, you will be able to just click on Regexper in Koding's App Store and start immediately.

In the meanwhile there are two options:

### Using Dashboard for GitHub

1. Launch "Dashboard for GitHub" in your Koding App Store (just browse to "Develop").
2. Type in "halk" and click on "Get User Repositories". Wait for repositories to be listed.
3. Click on "Install Application" for the repository "Regexper".
4. Launch "Regexper" in the App Store. Click on "Refresh Apps" if app does not show up in the grid.

![](https://raw.github.com/halk/Regexper.kdapp/master/resources/screenshots/install_github.png)

### Cloning manually

1. Launch Terminal from your Koding App Store and type in the following:

```bash
cd Applications
git clone https://github.com/halk/Regexper.kdapp
```

2. Click on "Refresh Apps" in the App Store.
3. Launch "Regexper".

## How do I use Regexper?

1. Once you've installed and launched Regexper app, you will find a small form. 
2. Just type in a JavaScript-style regular expression.
3. Click on "Please Help!".
4. Help yourself!

![](https://raw.github.com/halk/Regexper.kdapp/master/resources/screenshots/example_regex.png)

## What next?

Are you bored? Then try these regular expressions:

    ^(19|20)\d\d[- /.](0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])$

    ^([0-9]( |-)?)?(\(?[0-9]{3}\)?|[0-9]{3})( |-)?([0-9]{3}( |-)?[0-9]{4}|[a-zA-Z0-9]{7})$

    ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$

    ^((?>[a-zA-Z\d!#$%&'*+\-/=?^_`{|}~]+\x20*|"((?=[\x01-\x7f])[^"\\]|\\[\x01-\x7f])*"\x20*)*(?<angle><))?((?!\.)(?>\.?[a-zA-Z\d!#$%&'*+\-/=?^_`{|}~]+)+|"((?=[\x01-\x7f])[^"\\]|\\[\x01-\x7f])*")@(((?!-)[a-zA-Z\d\-]+(?<!-)\.)+[a-zA-Z]{2,}|\[(((?(?<!\[)\.)(25[0-5]|2[0-4]\d|[01]?\d?\d)){4}|[a-zA-Z\d\-]*[a-zA-Z\d]:((?=[\x01-\x7f])[^\\\[\]]|\\[\x01-\x7f])+)\])(?(angle)>)$