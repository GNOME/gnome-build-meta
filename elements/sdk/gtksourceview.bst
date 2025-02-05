kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.15/gtksourceview-5.15.0.tar.xz
  ref: 2ef21e55799253b8bdf216d5329e8025eeb1a3f1e3e2be44711ff032aaf17738
build-depends:
- sdk/gi-docgen.bst
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
