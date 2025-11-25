kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/49/gnome-console-49.1.tar.xz
  ref: fca39fd041e05ee7ca6d2a5c82001937d02ae1513f3f3651bd37ae0e2ef66e3e
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
