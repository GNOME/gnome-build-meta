kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/0.38/rygel-0.38.3.tar.xz
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
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
