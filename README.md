# ![Text “Hyperform - Insert Form” in 80s arcade game style](https://hyperform.js.org/statics/header.png)

## Localizations for Hyperform

This repository provides localization components for [Hyperform](http://hyperform.github.io).

## Usage

Just add the file representing your language after the main `hyperform` script:

```html
<script src="hyperform.js"></script>
<!-- load German strings -->
<script src="hyperform.de.js"></script>
<script>
  /* Validation messages are in German now. */
  hyperform(window);
</script>
```

## Coverage

The current language coverage is:

```
ar	65%
cs	93%
da	68%
de	100%
el	65%
es-ES	68%
fa	65%
fi	89%
fr	68%
he	65%
it	68%
ja	68%
no	93%
pt-BR	93%
pt-PT	93%
ru	100%
zh-CN	68%
zh-TW	68%
```

Want to enhance your language's coverage? Then read on!

## Contribution

**Help wanted!** For some languages we only have stub translations and some
strings are missing. If you speak العربية, Dansk, Ελληνικά, Español, Français,
עברית, Italiano, 日本語, or 中文 or 文言, please consider translating the
strings found, e.g., in `src/de.js`. Thank you!

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

# create a base translation with the strings provided
# by Mozilla:
make src/la.js

# Done? Great! Now, edit that file. Change the Mozilla
# translations where necessary and add the missing ones,
# that are commented out towards the end of the file:
$EDITOR src/la.js

# Add your language to the first line in the Makefile so
# that it gets built automatically:
sed -i '1s/$/ la/' Makefile

# Create the final files in the `dist` folder:
make

# Add your files and commit your changes...
git add src/la.js dist/hyperform.la.js dist/hyperform.la.cjs.js
git commit -m 'add Latin translation (la)'

# ...and push them to your fork:
git push
```

Then [follow the Github guide](https://help.github.com/articles/creating-a-pull-request/)
to create a pull request. Presto! Your translation is ready to become part
of the growing family of Hyperform translations.
