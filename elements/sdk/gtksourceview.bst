kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.11/gtksourceview-5.11.2.tar.xz
  ref: d428e8a709e92f23c501808d71cb3d2003392520bcd29ec5c55ce7a1dc17687b
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
