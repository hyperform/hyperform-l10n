# ![Text “Hyperform - Insert Form” in 80s arcade game style](https://github.com/hyperform/hyperform/raw/master/stuff/header.png)

## Localizations for Hyperform

This repository provides localization components for [Hyperform](http://hyperform.github.io).

## Usage

Just add the file representing your language after the main `hyperform` script:

    <script src="hyperform.js"></script>
    <!-- load German strings -->
    <script src="hyperform.de.js"></script>
    <script>
      /* Presto! Validation messages are in German. */
      hyperform.capture(document);
    </script>
