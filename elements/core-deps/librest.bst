kind: meson
sources:
- kind: git_tag
  url: gnome:librest.git
  track: master
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
