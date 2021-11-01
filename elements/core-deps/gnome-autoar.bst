kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.4/gnome-autoar-0.4.1.tar.xz
  ref: 646bd50ebad92d91c1be89097a15364156157442cac1471ded7ecb27d9a9150e
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dvapi=true
