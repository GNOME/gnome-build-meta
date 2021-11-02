kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/40/simple-scan-40.6.tar.xz
  ref: f2ff305998cc44636c1fdde20cd8ab1d441d4863a059e2d7a60f8e77afe8f171
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/colord-gtk.bst
- core-deps/libgusb.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
