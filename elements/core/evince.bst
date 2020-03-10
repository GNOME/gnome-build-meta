kind: autotools
sources:
- kind: tar
  url: gnome_downloads:evince/3.36/evince-3.36.0.tar.xz
  ref: 851d9b5234d479ab4c8f7c5cbaceb0e91ad79ccba1a7b733cde72dacc928fba8
build-depends:
- sdk/appstream-glib.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gspell.bst
- core-deps/libgxps.bst
- core-deps/poppler.bst
- core/nautilus.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-introspection
