kind: meson

sources:
- kind: git_repo
  url: gnome:rygel.git
  track: master
  ref: 45.0-4-g1f6429358285d95e05f5c672c90c55a2925a6511

build-depends:
- sdk/vala.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gssdp.bst
- core-deps/gst-editing-services.bst
- core-deps/gupnp-av.bst
- core-deps/gupnp-dlna.bst
- core-deps/gupnp.bst
- core-deps/libmediaart.bst
- sdk/gtk.bst
- sdk/libgee.bst
- sdk/tinysparql.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dplugins=external,gst-launch,media-export,mpris,playbin,ruih,localsearch
    -Dintrospection=enabled
