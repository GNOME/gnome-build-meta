kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/48/gnome-console-48.0.1.tar.xz
  ref: 018e908e4daebcfcb150d4f1bb28d98272aa9d14d6815eaf8da45f889db05c49
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
