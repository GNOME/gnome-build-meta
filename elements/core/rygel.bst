kind: meson

sources:
- kind: git_repo
  url: gnome:rygel.git
  track: master
  ref: 46.rc.0-3-g02e49655f946351eae4e188b49462235c856cf94

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
