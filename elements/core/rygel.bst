kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/0.39/rygel-0.39.2.tar.xz
  ref: 453f1ce782a51bae8f776a92f70d233625c98a1c4cd2ec3b4545cb7e77733664
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
