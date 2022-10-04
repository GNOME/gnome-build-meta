kind: meson
sources:
- kind: git_tag
  url: gnome:dconf-editor.git
  track: master
  ref: 43.0-3-g77a84fe8fc63e7c3b0d56f727a2127e853913a9f

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
