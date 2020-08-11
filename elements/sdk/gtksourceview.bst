kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.7/gtksourceview-4.7.90.tar.xz
  ref: 983bdcb88f98285b3b997c9335057c8fbc45aad0a7c13cb65eb365567e26baaf
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
