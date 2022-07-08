kind: meson

sources:
- kind: tar
  url: gnome_downloads:libadwaita/1.1/libadwaita-1.1.3.tar.xz
  ref: 9b92be6007da1bf75131a2d5e697f0ff985bccf82380d298d46f013675aa4197
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
