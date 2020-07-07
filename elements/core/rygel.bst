kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/0.39/rygel-0.39.1.tar.xz
  ref: 1a0646322f8bf8a891c791cd4e37024f3d1f3139f373aff1e5e08f9b02339496
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gssdp.bst
- core-deps/gst-editing-services.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libmediaart.bst
- core-deps/tracker-2.bst
- sdk/libgee.bst
- sdk/tracker.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
