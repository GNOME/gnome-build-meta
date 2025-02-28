kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-dlna.git
  track: master
  ref: gupnp-dlna-0.12.0-9-g8dd1cf53263a8347276b98fe1028e632fe50f851

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
