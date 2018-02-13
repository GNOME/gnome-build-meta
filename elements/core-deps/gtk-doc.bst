kind: autotools
sources:
- url: https://download.gnome.org/sources/gtk-doc/1.27/gtk-doc-1.27.tar.xz
  kind: tar
  ref: e26bd3f7080c749b1cb66c46c6bf8239e2f320a949964fb9c6d56e1b0c6d9a6f
depends:
- core-deps/gettext.bst
- core-deps/yelp-tools.bst
- base.bst

variables:
  (?):
  - base == 'freedesktop1.8':
      conf-local:
        "--with-xml-catalog=/usr/etc/xml/catalog"
