kind: meson
sources:
- kind: git_tag
  url: gnome:ghex.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
