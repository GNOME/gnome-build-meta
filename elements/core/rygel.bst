kind: meson

sources:
- kind: git_tag
  url: gnome:rygel.git
  track: master
  ref: rygel-0.42.0-3-gf403566e8dc06501cfbf2e036869a6f2384cf392

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
