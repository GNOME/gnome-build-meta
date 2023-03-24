kind: meson

sources:
- kind: tar
  url: freedesktop_software:colord/releases/colord-gtk-0.3.0.tar.xz
  ref: b9466656d66d9a6ffbc2dd04fa91c8f6af516bf9efaacb69744eec0f56f3c1d0

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk-deps/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dman=false
    -Dvapi=true
