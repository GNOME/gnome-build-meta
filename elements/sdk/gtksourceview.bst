kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.8/gtksourceview-4.8.0.tar.xz
  ref: 00a19121500cedf1bae97f35af865d839841fd785d9facf188498e13975b4e1a
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
