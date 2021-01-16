kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/0.40/rygel-0.40.0.tar.xz
  ref: d67ecc834ed060337e8fab8cb55a4f3d0c0cce4457e0cd307903a2539f6e2b77
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
