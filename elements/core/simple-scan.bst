kind: meson
sources:
- kind: tar
  url: gnome_downloads:simple-scan/3.35/simple-scan-3.35.90.tar.xz
  ref: 897302cac6b3e3cef0d30c4aad639f4bed04d65181f3172f171b5ff23a0dda23
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
