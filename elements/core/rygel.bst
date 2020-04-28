kind: meson
sources:
- kind: tar
  url: gnome_downloads:rygel/0.38/rygel-0.38.3.tar.xz
  ref: 08c21a577f7bdad26446a75ffa32778b26842c3b1188165f0b19818559747d00
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gssdp.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libmediaart.bst
- core-deps/tracker.bst
- sdk/libgee.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
