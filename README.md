# ![Text “Hyperform - Insert Form” in 80s arcade game style](https://hyperform.js.org/statics/header.png)

## Localizations for Hyperform

This repository provides localization components for [Hyperform](http://hyperform.github.io).

## Usage

Add the file representing your language after the main `hyperform` script:

```html
<script src="hyperform.js"></script>
<!-- load German strings -->
<script src="hyperform.de.js"></script>
<script>
  /* validation messages are in German now. */
  hyperform(window);
</script>
```

You can switch languages again after loading translations:

```js
/* switch validation messages back to English: */
hyperform.setLanguage("en");
```

## Coverage

English texts are included in Hyperform and serve as fallback, if no translated string is found. The current language coverage is:

```
ar     65%
cs     93%
da     68%
de    100%
el     65%
es-ES  68%
fa     65%
fi     89%
fr    100%
he     65%
it     68%
ja     68%
nl    100%
no     93%
pt-BR  93%
pt-PT  93%
ru    100%
zh-CN  68%
zh-TW  68%
```

Want to enhance your language's coverage? Then read on!

## Contribution

**Help wanted!** For some languages we only have stub translations and some
strings are missing. If you speak العربية, Dansk, Ελληνικά, Español, Français,
עברית, Italiano, 日本語, or 中文 or 文言, or any other language please consider
translating the missing texts or starting a new translation for your language.
Thank you for your help!

A short intro how to get your translation into here: Let's say you want to
contribute the Latin translation (language code `la`). This is how you would
do that:

First, fork this repository on Github. You can do that with the button in the
upper-right corner on https://github.com/hyperform/hyperform-l10n/ labeled
“Fork“. This will create a copy of the repository owned by your Github user
account. Then head over to your terminal.

```sh
# clone the repository to your computer, after you forked it, and...
git clone git@github.com:YourForkOf/hyperform-l10n.git

# ...enter the resulting folder
cd hyperform-l10n
```

After you cloned the repository, you will find a file named `Makefile`, that
is used to pull in initial translations from the Mozilla Firefox repository.
`Makefile`s are interpreted by a program called `make`. To install `make`,
e.g., on Ubuntu Linux, run `sudo apt install make`.

```sh
# create a base translation with the strings provided
# by Mozilla:
make src/la.js

# Done? Great! Now, edit that file. Change the Mozilla
# translations where necessary and add the missing ones,
# that are commented out towards the end of the file:
$EDITOR src/la.js
```

No need to do this in the terminal. You can, of course, use your favorite
text editor or IDE to edit the file.

```sh
# Add your language to the first line in the Makefile so
# that it gets built automatically:
sed -i '1s/$/ la/' Makefile
```

(This is just a fancy way to quickly edit the `Makefile` in the terminal.
The language can equally well be added in a normal editor.)

```sh
# Create the final files in the `dist` folder:
make

# Add your files and commit your changes...
git add Makefile src/la.js dist/hyperform.la.*
git commit -m 'add Latin translation (la)'

# ...and push them to your fork:
git push
```

Then [follow the Github guide](https://help.github.com/articles/creating-a-pull-request/)
to create a pull request. Presto! Your translation is ready to become part
of the growing family of Hyperform translations.
