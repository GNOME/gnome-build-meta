kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.13/gtksourceview-5.13.1.tar.xz
  ref: a25b049607424f7c63412ebbf36f2635bc9f2e2747703f3f0760fd0f07120616
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
