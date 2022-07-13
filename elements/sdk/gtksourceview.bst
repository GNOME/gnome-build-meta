kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.5/gtksourceview-5.5.0.tar.xz
  ref: 57c9209b5ca97d52aaec96f065f7a75d08ff93afe2e7e6f47b355b8559c7f784
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
