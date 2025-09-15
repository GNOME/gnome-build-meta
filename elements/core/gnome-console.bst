kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/49/gnome-console-49.0.tar.xz
  ref: 9e8e9646f473d01f4b4a7bce2c47ad226b4ae83fabf24cbbb4ac94f6ac5d5cc2
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
