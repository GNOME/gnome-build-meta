kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libnma/1.8/libnma-1.8.26.tar.xz
  ref: 4e419d5fe4f0360b25f9fe9223a4ed6da94984a5dcd999679856c78c46a334f1
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/mobile-broadband-provider-info.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-more-warnings=no
