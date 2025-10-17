kind: meson

sources:
- kind: git_repo
  url: gnome:simple-scan.git
  track: master
  ref: 49.0-41-g406e59c9fac027dc5a3b817601f53869834c5944

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord-gtk.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libgusb.bst
