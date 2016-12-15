# ![Text “Hyperform - Insert Form” in 80s arcade game style](https://github.com/hyperform/hyperform/raw/master/stuff/header.png)

## Localizations for Hyperform

This repository provides localization components for [Hyperform](http://hyperform.github.io).

## Usage

Just add the file representing your language after the main `hyperform` script:

    <script src="hyperform.js"></script>
    <!-- load German strings -->
    <script src="hyperform.de.js"></script>
    <script>
      /* Validation messages are in German now. */
      hyperform(window);
    </script>

## Contribution

If you want to add your translation, you are very welcome to do so! Thanks for
considering to help!

A short intro how things work in this repo: When you clone this repository,
you will find a `Makefile`, that is used to pull in initial translations from
the Mozilla Firefox repository. So, let's say you want to contribute the
Latin translation (language code `la`). This is how you would do that:

```sh
# clone the repository (after you forked it) and...
git clone git@github.com:YourForkOf/hyperform-l10n.git

# ...cd into it
cd hyperform-l10n

# create the special translation strings, that are not provided
# by Mozilla. Take a look at src/de.json for the possible source
# strings to translate.
cp src/de.json src/la.json
$EDITOR src/la.json

# Done? Great! Now, pull in the translations from Mozilla:
make dist/hyperform.la.js

# Take a look at dist/hyperform.la.js. If you want, change all translations in
# the first block, that are problematic. You can also choose to just keep them
# as they are.
$EDITOR dist/hyperform.la.js

# Add your files and commit your changes...
git add src/la.json dist/hyperform.la.js
git commit -m 'add Latin translation (la)' src/la.json dist/hyperform.la.js

# ...and push them to your fork:
git push
```

Then [follow the Github guide](https://help.github.com/articles/creating-a-pull-request/)
to create a pull request. Presto! Your translation is ready to become part
of the growing family of Hyperform translations.
