kind: autotools
sources:
- kind: git
  url: git_gnome_org:evince
  track: master
depends:
- core-deps/glib.bst
- core-deps/gspell.bst
- core-deps/gtk+-3.bst
- core-deps/libgxps.bst
- core-deps/libsecret.bst
- core-deps/libsecret.bst
- core-deps/poppler.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/nautilus.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-introspection
