kind: autotools

sources:
- kind: tar
  url: gnome_downloads:libgtop/2.41/libgtop-2.41.4.tar.xz
  ref: d3c18158549218835a00517d9c454a2de825ac7808efe84101a8b7e2a8ab6663
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/texinfo.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

environment:
  CC: gcc -std=c99
