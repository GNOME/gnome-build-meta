kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.6/gtksourceview-4.6.0.tar.xz
  ref: 4c13e30ab2e602abdc56f55d35f43c1142a79b1cd77aa8839d2fc85e966d9a85
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
