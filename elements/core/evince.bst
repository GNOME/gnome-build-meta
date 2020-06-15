kind: autotools
sources:
- kind: tar
  url: gnome_downloads:evince/3.36/evince-3.36.5.tar.xz
  ref: 6f0dd6e30639eb620f201a6ae40f21c4b78c030f0d6437f9e309f7240195e97c
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
