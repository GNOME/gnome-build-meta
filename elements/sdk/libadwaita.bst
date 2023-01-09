kind: meson

sources:
- kind: tar
  url: gnome_downloads:libadwaita/1.1/libadwaita-1.1.6.tar.xz
  ref: ec39cdf024d7f15b5f7e78f4c08cfb4861183cc632d0b5d2225209a955e5d56f
build-depends:
- sdk-deps/gi-docgen.bst
- sdk-deps/sassc.bst
- sdk/gobject-introspection.bst
- sdk/sysprof-minimal.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dprofiling=true
    -Dgtk_doc=true
