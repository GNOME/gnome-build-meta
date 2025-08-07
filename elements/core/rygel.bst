kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/45/rygel-45.beta.tar.xz
  ref: 5f46d272aca0cb1076a3ad7c7006598870e6cd0d044e586e2e72dfdc25f514cd
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
