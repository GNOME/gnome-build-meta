kind: meson

sources:
- kind: tar
  url: gnome_downloads:libnma/1.8/libnma-1.8.30.tar.xz
  ref: da33e72a49e07d855d97a52aa9a8962a4c96f52b9168c4e0027117ad8ffdafb4
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/mobile-broadband-provider-info.bst
- sdk/adwaita-icon-theme.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst
