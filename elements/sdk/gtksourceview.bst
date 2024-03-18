kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.12/gtksourceview-5.12.0.tar.xz
  ref: daf32ff5d3150d6385917d3503a85b9e047ba158b2b03079314c9c00813fa01f
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dinstall-tests=true
    -Ddocumentation=true
    -Dsysprof=true
