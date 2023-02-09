kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/0.42/rygel-0.42.0.tar.xz
  ref: 006da78677df28caee287c44c29fcd9edcb1b2162423bc7f2dd2dc856b8e2bbb
build-depends:
- sdk/vala.bst
- sdk/gtk-doc.bst
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
