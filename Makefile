LANGUAGES := ar cs da de el es-ES fa fi fr he it ja no pt-BR pt-PT ru zh-CN zh-TW

all:
	@mkdir -p dist
	@for lang in $(LANGUAGES); do \
		$(MAKE) src/$$lang.js ; \
		$(MAKE) dist/hyperform.$$lang.js ; \
		$(MAKE) dist/hyperform.$$lang.cjs.js ; \
	done

dist/hyperform.%.js: src/%.js
	@cp "$<" "$@"

dist/hyperform.%.cjs.js: dist/hyperform.%.js
	@( \
		echo 'var hyperform = require("hyperform");' ; \
		cat "$<"; \
	) > "$@"

src/%.js:
	@mkdir -p src
	@echo "* create $@"
	@( \
		echo '/**' ; \
		echo ' * some of the following strings were imported from Mozilla'"'"'s' ; \
		echo ' * Firefox source repository, found at' ; \
		echo ' * https://hg.mozilla.org/l10n-central/$*/raw-file/default/dom/chrome/dom/dom.properties' ; \
		echo ' * and published under the MPL v2.0' ; \
		echo ' */' ; \
		echo "hyperform.addTranslation('$*', {" ; \
		curl -sS \
			'https://hg.mozilla.org/l10n-central/$*/raw-file/default/dom/chrome/dom/dom.properties' | \
			sed -n -e '/^FormValidation/ { s/%S/%l/g ; p }' | \
			sed 's/^FormValidation\([^=\t ]\+\)\s*=\s*\(.\+\)/\1: "\2",/' ; \
		echo '//"Please match the requested type.": "",' ; \
		echo '//"Please comply with all requirements.": "",' ; \
		echo '//"Please lengthen this text to %l characters or more (you are currently using %l characters).": "",' ; \
		echo '//"Please use the appropriate format.": "",' ; \
		echo '//"Please enter a comma separated list of email addresses.": "",' ; \
		echo '//"Please select a file of the correct type.": "",' ; \
		echo '//"Please select one or more files.": "",' ; \
		echo '});' ; \
		echo "hyperform.setLanguage('$*');" ; \
	) > "$@"
