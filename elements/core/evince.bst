kind: autotools
sources:
- kind: git
  url: git_gnome_org:evince
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/libgxps.bst
- sdk/libsecret.bst
- sdk/libsecret.bst
- core-deps/poppler.bst
- sdk/yelp-tools.bst
- sdk/adwaita-icon-theme.bst
- core/nautilus.bst
- base.bst
variables:
  conf-local: --enable-introspection
