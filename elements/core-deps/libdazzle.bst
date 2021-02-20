kind: meson
sources:
- kind: tar
  url: gnome_downloads:libdazzle/3.38/libdazzle-3.38.0.tar.xz
  ref: e18af28217943bcec106585298a91ec3da48aa3ad62fd0992f23f0c70cd1678f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
