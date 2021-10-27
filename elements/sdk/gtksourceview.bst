kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.8/gtksourceview-4.8.2.tar.xz
  ref: 842de7e5cb52000fd810e4be39cd9fe29ffa87477f15da85c18f7b82d45637cc
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
