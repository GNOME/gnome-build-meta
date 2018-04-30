kind: autotools
sources:
- kind: git
  url: git_gnome_org:evince
  track: master
depends:
- core-deps/libgxps.bst
- core-deps/poppler.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- sdk/libsecret.bst
- sdk/yelp-tools.bst
- base.bst
variables:
  conf-local: --enable-introspection
