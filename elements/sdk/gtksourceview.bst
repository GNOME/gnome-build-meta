kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.13/gtksourceview-5.13.0.tar.xz
  ref: b4a33643b0a8d2b0765a1109dc38eef9514c2d42f95ed77643d4cf5eff69674a
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
