LANGUAGES := ar da de el es-ES fr he it ja pt-PT pt-BR zh-CN zh-TW

all:
	@for lang in $(LANGUAGES); do \
		$(MAKE) dist/hyperform.$$lang.js ; \
	done

dist/hyperform.%.js:
	@mkdir -p dist
	@echo "* create $@"
	@( \
		echo '/**' ; \
		echo ' * source: Mozilla' ; \
		echo ' * https://hg.mozilla.org/l10n-central/$*/raw-file/default/dom/chrome/dom/dom.properties' ; \
		echo ' * published under the MPL v2.0' ; \
		echo ' */' ; \
		echo 'hyperform.add_translation("$*",{' ; \
		curl -sS \
			'https://hg.mozilla.org/l10n-central/$*/raw-file/default/dom/chrome/dom/dom.properties' | \
			sed -n -e '/^FormValidation/ { s/%S/%l/g ; p }' | \
			sed 's/^FormValidation\([^=\t ]\+\)\s*=\s*\(.\+\)/\1:"\2",/' ; \
		echo '});' ; \
		if [ -f src/$*.json ]; then \
			echo -n 'hyperform.add_translation("$*",' ; \
			cat src/$*.json; \
			echo ');' ; \
		fi ; \
		echo 'hyperform.set_language("$*");' ; \
	) > "$@"
