kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.37/simple-scan-3.37.1.tar.xz
  ref: b7b0332b3878f63618f82225bf75c966696239183a3ce42586037e1eba4532ab
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
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
