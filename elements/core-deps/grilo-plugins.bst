kind: meson
sources:
- kind: tar
  url: gnome_downloads:grilo-plugins/0.3/grilo-plugins-0.3.11.tar.xz
  ref: dde2e605b1994341c6bf012493e056b406b08571834dea3b3c671d5b8b1dcd73
depends:
- core-deps/gmime3.bst
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
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Denable-lua-factory=no
