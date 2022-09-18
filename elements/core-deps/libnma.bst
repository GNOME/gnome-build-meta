kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnma/1.10/libnma-1.10.2.tar.xz
  ref: 4fc3d9c404b7b13303d9394f96961c5298d71afa9f1fa7af5e4f0f6e842a0940
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
