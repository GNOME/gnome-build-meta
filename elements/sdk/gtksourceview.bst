kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.19/gtksourceview-5.19.0.tar.xz
  ref: 242bf2c3dc51c44402294b584141399afe7cf87bfacf2b958685cece964301c5
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
