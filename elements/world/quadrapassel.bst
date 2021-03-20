kind: meson
sources:
- kind: git_tag
  url: gnome:quadrapassel.git
  track: master

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/gsound.bst
- sdk/gtk+-3.bst
- sdk/libmanette.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
