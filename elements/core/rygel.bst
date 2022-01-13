kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/0.40/rygel-0.40.3.tar.xz
  ref: cf0be35109cb570e5cf0afe596d85aecb9b0e9359861535302bb7b604daf51d7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

variables:
  meson-local: >-
    -Dplugins=external,gst-launch,lms,media-export,mpris,playbin,ruih,tracker3

depends:
- core-deps/gssdp.bst
- core-deps/gst-editing-services.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libmediaart.bst
- sdk/libgee.bst
- sdk/tracker.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
