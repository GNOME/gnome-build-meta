kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnma/1.8/libnma-1.8.40.tar.xz
  ref: 870a75f8d4641ed0d90f836aea6ff511224bde97ffd56d608ade2e9b5acb2b22
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
