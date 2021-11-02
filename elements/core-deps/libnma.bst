kind: meson
sources:
- kind: tar
  url: gnome_downloads:libnma/1.8/libnma-1.8.32.tar.xz
  ref: 0a57b93a2fad43acc763f320dd3a7a93c429b0e3118dfa549d67824cddc4e905
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/NetworkManager.bst
- core-deps/mobile-broadband-provider-info.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/gcr.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:bootstrap-import.bst
