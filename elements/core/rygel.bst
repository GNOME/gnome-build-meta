kind: meson

sources:
- kind: git_repo
  url: gnome:rygel.git
  track: master
  ref: 46.alpha-16-g3b87268c53d9121529bd06b5ce0690ff18f93ad0

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
