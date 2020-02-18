kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.5/gtksourceview-4.5.91.tar.xz
  ref: bf81ef5bcc3fa02907f3fea6e64a150e48e5fe66515d4ce431696ec53d5a6241
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
