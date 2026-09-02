kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/51/gnome-console-51.rc.tar.xz
  ref: 8f72e0de17c70344ca843b89618a5259fe93849a9e837154bf8d5a8468333c86
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst

depends:
- core-deps/libgtop.bst
- core-deps/vte.bst
- core/nautilus.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
