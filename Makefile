LANGUAGES := ar da de el es-ES fr he it ja pt-PT zh-CN zh-TW

all:
	@for lang in $(LANGUAGES); do \
		$(MAKE) src/hyperform.$$lang.js ; \
	done

src/hyperform.%.js:
	@mkdir -p src
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
			sed -n -e '/^FormValidation/s/%S/%l/gp' | \
			sed 's/^FormValidation\([^=\t]\+\)\t*=\(.\+\)/\1:"\2",/' ; \
		echo '});' ; \
		echo 'hyperform.set_language("$*");' ; \
	) > "$@"
