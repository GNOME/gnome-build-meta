kind: meson
sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-6-g66e1e07bae9d258a856174e8f78f29f98f64be55

build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
