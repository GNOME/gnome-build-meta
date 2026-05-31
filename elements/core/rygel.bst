kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/45/rygel-45.2.tar.xz
  ref: 20e57b70b15a865d77dc38f9f786abc52c64b111fe5f938a62c28d712df1331d
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
