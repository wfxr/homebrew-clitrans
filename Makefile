PKGVER = 0.3.4
PKGURL = https://github.com/wfxr/clitrans/releases/download/v$(PKGVER)/clitrans-v$(PKGVER)-x86_64-apple-darwin.tar.gz

.PHONY: codegen
codegen:
	wget $(PKGURL) -qO '$(PKGVER).tar.gz'
	PKGSIG=$$(sha256sum '$(PKGVER).tar.gz' | cut -d' ' -f1) && sed \
		-e 's|{{PKGURL}}|$(PKGURL)|g' \
		-e 's|{{PKGVER}}|$(PKGVER)|g' \
		-e "s|{{PKGSIG}}|$${PKGSIG}|g" \
		Formula/clitrans.rb.tmpl > Formula/clitrans.rb
