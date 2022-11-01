kind: meson
sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-4-g7ff26b7706cc3ac3e5b90d597b9e58b779cd2f1f

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
