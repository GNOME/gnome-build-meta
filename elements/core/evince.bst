kind: meson
sources:
- kind: tar
  url: url: gnome_downloads:evince/3.32/evince-3.32.0.tar.xz
depends:
- core-deps/gspell.bst
- core-deps/libgxps.bst
- core-deps/poppler.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- filename: sdk/appstream-glib.bst
  type: build
- sdk/glib.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsecret.bst
- sdk/yelp-tools.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --enable-introspection
