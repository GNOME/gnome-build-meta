kind: meson

sources:
- kind: tar
  url: freedesktop_software:colord/releases/colord-gtk-0.3.1.tar.xz
  ref: c176b889b75630a17f4e3d7ef24c09a3e12368e633496087459c8b53ac3a122d
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dman=false
    -Dvapi=true
