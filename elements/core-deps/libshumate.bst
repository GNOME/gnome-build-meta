kind: meson

sources:
- kind: tar
  url: gnome_downloads:libshumate/1.0/libshumate-1.0.1.tar.xz
  ref: 1e264fa8a1dfa5914f243e2efc64c69e341429ae8537c5eaa9aebb5007cda151
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dlibsoup3=true
