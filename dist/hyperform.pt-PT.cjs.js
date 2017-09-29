var hyperform = require("hyperform");
/**
 * some of the following strings were imported from Mozilla's
 * Firefox source repository, found at
 * https://hg.mozilla.org/l10n-central/pt-PT/raw-file/default/dom/chrome/dom/dom.properties
 * published under the MPL v2.0
 */
hyperform.addTranslation("pt-PT",{
TextTooLong:"Por favor reduza o texto para %l caracteres ou menos (está a utilizar %l caracteres).",
TextTooShort:"Por favor, use pelo menos %l caracteres (no momento ele tem %l caracteres).",
ValueMissing:"Por favor preencha este campo.",
CheckboxMissing:"Por favor selecione esta caixa para continuar.",
RadioMissing:"Por favor selecione uma destas opções.",
FileMissing:"Por favor selecione um ficheiro.",
SelectMissing:"Por favor, selecione um elemento da lista.",
InvalidEmail:"Por favor introduza um endereço de e-mail.",
InvalidURL:"Por favor introduza o URL.",
//InvalidDate:"",
PatternMismatch:"Por favor corresponda ao formato pedido.",
PatternMismatchWithTitle:"Por favor corresponda ao formato pedido: %l.",
NumberRangeOverflow:"Por favor selecione um valor que não seja maior que %l.",
DateRangeOverflow:"Por favor selecione um valor que não seja mais recente que %l.",
TimeRangeOverflow:"Por favor selecione um valor que não seja mais recente que %l.",
NumberRangeUnderflow:"Por favor selecione um valor que não seja menor que %l.",
DateRangeUnderflow:"Por favor selecione um valor que não seja mais recente que %l.",
TimeRangeUnderflow:"Por favor selecione um valor que não seja mais recente que %l.",
StepMismatch:"Por favor selecione um valor válido. Os dois valores válidos mais aproximados são %l e %l.",
StepMismatchOneValue:"Por favor selecione um valor válido. O valor válido mais aproximado é %l.",
BadInputNumber:"Por favor introduza um número.",
//TODO: verify the following translations:
"Please match the requested type.": "Por favor, satisfaça o tipo requisitado.",
"Please comply with all requirements.": "Por favor, satisfaça todos os requisitos.",
"Please lengthen this text to %l characters or more (you are currently using %l characters).": "Por favor, use pelo menos %l caracteres (no momento ele tem %l caracteres).",
"Please use the appropriate format.": "Por favor, use o formato apropriado.",
"Please enter a comma separated list of email addresses.": "Por favor, digite uma lista de e-mails separados por vírgula.",
"Please select a file of the correct type.": "Por favor, selecione um ficheiro do tipo correto.",
"Please select one or more files.": "Por favor, selecione um ou mais ficheiros.",
//"any value":"",
//"any valid value":"",
});
hyperform.setLanguage("pt-PT");
