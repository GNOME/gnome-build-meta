kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/49/gnome-console-49.rc.tar.xz
  ref: f933fed779bf7cfd873d9f7735f67049d5f21215a544688c1ae3be50b19066c9
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
