kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/0.44/rygel-0.44.2.tar.xz
  ref: 796eee494cdf60dc2bf82b00b8f99a14ba1c7cf40d2944817ff0c1aa6073d5a0
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
- sdk/tinysparql.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dplugins=external,gst-launch,media-export,mpris,playbin,ruih,tracker3
