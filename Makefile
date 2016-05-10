LANGUAGES := ar da de el es-ES fr he it ja pt-PT zh-CN zh-TW

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
		echo ' * http://mxr.mozilla.org/l10n-central/source/$*/dom/chrome/dom/dom.properties?raw=1' ; \
		echo ' * published under the MPL v2.0' ; \
		echo ' */' ; \
		echo 'hyperform.add_translation("$*",{' ; \
		curl -sS \
			'http://mxr.mozilla.org/l10n-central/source/$*/dom/chrome/dom/dom.properties?raw=1' | \
			sed -n -e '/^FormValidation/ { s/%S/%l/g ; p }' | \
			sed 's/^FormValidation\([^=\t]\+\)\t*=\(.\+\)/\1:"\2",/' ; \
		echo '});' ; \
		if [ -f src/$*.json ]; then \
			echo 'hyperform.add_translation("$*",' ; \
			cat src/$*.json; \
			echo ');' ; \
		fi ; \
		echo 'hyperform.set_language("$*");' ; \
	) > "$@"
