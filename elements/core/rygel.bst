kind: meson

sources:
- kind: git_repo
  url: gnome:rygel.git
  track: master
  ref: rygel-0.44.1-2-gbbb78762f42fe48980afba539e733091cd2565f2

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
