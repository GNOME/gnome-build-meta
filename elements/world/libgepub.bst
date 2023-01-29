kind: meson
sources:
- kind: git_tag
  url: gnome:libgepub.git
  track: master
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- core-deps/libsoup-2.4.bst
- world/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
