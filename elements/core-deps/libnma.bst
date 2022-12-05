kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnma/1.10/libnma-1.10.4.tar.xz
  ref: 79e730dda19f9b34886f4064aa170f1a2326b08329d655d80b67e906c7f78b7c
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/mobile-broadband-provider-info.bst
- sdk/adwaita-icon-theme.bst
- sdk/gcr-3.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dlibnma_gtk4=true
