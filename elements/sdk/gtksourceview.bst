kind: meson

sources:
- kind: tar
  url: gnome_downloads:gtksourceview/5.4/gtksourceview-5.4.2.tar.xz
  ref: ad140e07eb841910de483c092bd4885abd29baadd6e95fa22d93ed2df0b79de7
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
