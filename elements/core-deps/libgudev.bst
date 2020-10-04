kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libgudev/234/libgudev-234.tar.xz
  ref: 1baeacacf0db42fa073ad5183d1decce9317857416a2b0f82ce3370d711a2e37
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-umockdev
