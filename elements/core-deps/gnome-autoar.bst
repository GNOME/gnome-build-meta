kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.5/gnome-autoar-0.5.2.tar.xz
  ref: 6c20bd16c87aba15869e56444424481f632ac302989a203e8ce4dcc73dea33a5
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dvapi=true
