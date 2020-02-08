kind: autotools
sources:
- kind: tar
  url: gnome_downloads:evince/3.35/evince-3.35.1.tar.xz
  ref: a66279369275b7731b6bf05cb75f8f8477c789342584893f57c3380c132b0bb3
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
