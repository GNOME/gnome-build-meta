kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/50/gnome-console-50.0.tar.xz
  ref: e4950207f0547e6a6c0f18eebfcf6e1a10461eab0f2fae0aae512b1044c7ac6e
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
