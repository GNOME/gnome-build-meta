kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.6/gtksourceview-4.6.1.tar.xz
  ref: 63f487a7ab59612ffa9e7be1883dbd274ab1016afcede3239b93b0fc384df874
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
