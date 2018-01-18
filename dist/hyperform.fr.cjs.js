var hyperform = require("hyperform");
/**
 * some of the following strings were imported from Mozilla's
 * Firefox source repository, found at
 * https://hg.mozilla.org/l10n-central/fr/raw-file/default/dom/chrome/dom/dom.properties
 * published under the MPL v2.0
 */
hyperform.addTranslation("fr",{
TextTooLong:"Veuillez raccourcir ce champ à %l caractères ou moins (vous utilisez actuellement %l caractères).",
TextTooShort:"Veuillez utiliser au moins %l caractères pour ce champ (vous utilisez actuellement %l caractères).",
ValueMissing:"Veuillez compléter ce champ.",
CheckboxMissing:"Veuillez cocher cette case si vous désirez poursuivre.",
RadioMissing:"Veuillez sélectionner l’une de ces options.",
FileMissing:"Veuillez sélectionner un fichier.",
SelectMissing:"Veuillez sélectionner un élément de la liste.",
InvalidEmail:"Veuillez saisir une adresse électronique valide.",
InvalidURL:"Veuillez saisir une URL.",
//InvalidDate:"",
PatternMismatch:"Veuillez modifier la valeur pour correspondre au format demandé.",
PatternMismatchWithTitle:"Veuillez modifier la valeur du champ pour correspondre au format demandé : %l.",
NumberRangeOverflow:"Veuillez sélectionner une valeur inférieure ou égale à %l.",
DateRangeOverflow:"Veuillez sélectionner une valeur antérieure ou égale à %l.",
TimeRangeOverflow:"Veuillez sélectionner une valeur antérieure ou égale à %l.",
NumberRangeUnderflow:"Veuillez sélectionner une valeur supérieure ou égale à %l.",
DateRangeUnderflow:"Veuillez sélectionner une valeur postérieure ou égale à %l.",
TimeRangeUnderflow:"Veuillez sélectionner une valeur postérieure ou égale à %l.",
StepMismatch:"Veuillez sélectionner une valeur valide. Les deux valeurs valides les plus proches sont %l et %l.",
StepMismatchOneValue:"Veuillez sélectionner une valeur valide. La valeur valide la plus proche est %l.",
BadInputNumber:"Veuillez saisir un nombre.",
"Please match the requested type.": "Veuillez respecter le type de champ demandé.",
"Please comply with all requirements.": "Veuillez respecter toutes les conditions.",
"Please lengthen this text to %l characters or more (you are currently using %l characters).": "Veuillez allonger ce texte pour atteindre %l caractères ou plus (vous avez écrit pour l'instant %l caractères).",
"Please use the appropriate format.": "Veuillez utiliser le format approprié.",
"Please enter a comma separated list of email addresses.": "Veuillez saisir une liste d'adresses électroniques séparées par des virgules.",
"Please select a file of the correct type.": "Veuillez sélectionner un fichier du type approprié.",
"Please select one or more files.": "Veuillez sélectionner un ou plusieurs fichiers.",
"any value":"n'importe quelle valeur",
"any valid value":"n'importe quelle valeur valide",
});
hyperform.setLanguage("fr");
