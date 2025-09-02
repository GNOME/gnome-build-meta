kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.17/gtksourceview-5.17.1.tar.xz
  ref: 740de9afbe22bb31dbd8532b8b331e7953ce63961c0ae12d12fae42d50101607
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dinstall-tests=true
    -Ddocumentation=true
    -Dsysprof=true
