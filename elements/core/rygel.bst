kind: meson

sources:
- kind: tar
  url: gnome_downloads:rygel/46/rygel-46.alpha.tar.xz
  ref: 4dae03b8f1d486a5728a00148c941ac54f55d59d214c1a720498f33d371a0fc0
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/vala.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/python3-pyyaml.bst

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
