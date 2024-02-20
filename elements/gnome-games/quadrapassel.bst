kind: meson
sources:
- kind: git_repo
  url: gnome:quadrapassel.git
  track: master

  ref: 40.2-76-g2b650a10ca2a1e8d8526e4e37f2b4131cce062d2
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
- gnome-games/clutter-gtk.bst
- gnome-games/clutter.bst
- freedesktop-sdk.bst:bootstrap-import.bst
