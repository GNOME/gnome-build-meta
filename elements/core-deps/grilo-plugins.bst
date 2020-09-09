kind: meson
sources:
- kind: tar
  url: gnome_downloads:grilo-plugins/0.3/grilo-plugins-0.3.12.tar.xz
  ref: c6b6df086a164d65c206d70139ce80591f8feca3545612e45b823fb4fe4b2577
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gmime.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp.bst
- core-deps/libgdata.bst
- core-deps/libmediaart.bst
- core-deps/librest.bst
- core-deps/totem-pl-parser.bst
- core-deps/tracker.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Denable-lua-factory=no
