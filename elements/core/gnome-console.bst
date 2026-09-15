kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-console/51/gnome-console-51.0.tar.xz
  ref: f40d13903b1f067f0c02e0812f78df8ec25d8cd129794e7e46bd56ca0c156f2f
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
