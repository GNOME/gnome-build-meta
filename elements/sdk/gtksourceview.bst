kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.7/gtksourceview-5.7.1.tar.xz
  ref: 3b42541964db9c2fa50a9658d4886bdf77d023fe4e96c5b17bce51c9f58c48e6
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
    -Dinstall_tests=true
    -Dgtk_doc=true
    -Dsysprof=true
