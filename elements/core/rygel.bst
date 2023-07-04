kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/0.42/rygel-0.42.3.tar.xz
  ref: 0fdec2128537e8b55c3c540d0a80dc7c249ab29153f4be0197a5f31025a5a5a0
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gssdp.bst
- core-deps/gst-editing-services.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libmediaart.bst
- sdk/libgee.bst
- sdk/tracker.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dplugins=external,gst-launch,lms,media-export,mpris,playbin,ruih,tracker3
