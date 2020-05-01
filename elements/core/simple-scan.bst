kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.36/simple-scan-3.36.2.tar.xz
  ref: aedb7f9368ee771eaa1f76daddcc41b8dfb5d77e61e63d36ef889783879944f9
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
