kind: meson
sources:
- kind: tar
  url: gnome_downloads:gtksourceview/4.8/gtksourceview-4.8.3.tar.xz
  ref: c30019506320ca2474d834cced1e2217ea533e00eb2a3f4eb7879007940ec682
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
