kind: meson
sources:
- kind: git_tag
  url: gnome:quadrapassel.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/gtk+-3.bst
- sdk/libmanette.bst
- sdk/librsvg.bst
- world/clutter-gtk.bst
- world/clutter.bst
- freedesktop-sdk.bst:bootstrap-import.bst
