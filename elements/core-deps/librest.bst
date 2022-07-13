kind: meson
sources:
- kind: tar
  url: gnome_downloads:rest/0.9/rest-0.9.1.tar.xz
  ref: 9266a5c10ece383e193dfb7ffb07b509cc1f51521ab8dad76af96ed14212c2e3
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtksourceview.bst
- sdk/json-glib.bst
- sdk/libadwaita.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dsoup2=false
