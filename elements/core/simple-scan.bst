kind: meson

sources:
- kind: tar
  url: gnome_downloads:simple-scan/50/simple-scan-50.0.tar.xz
  ref: cc32b561ae227182d31a94466632e311723756e3ac90538c3c7e2a2c9aaa4a09
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

runtime-depends:
- core-deps/sane-airscan.bst
