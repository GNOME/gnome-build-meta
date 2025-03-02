kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.15/gtksourceview-5.15.1.tar.xz
  ref: 39c0c82148c088a7a65765c4fb8f9f045590bf0b464930ba32c9f709b2a5f40e
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
