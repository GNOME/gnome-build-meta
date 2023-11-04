kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-dlna.git
  track: master
  ref: gupnp-dlna-0.12.0-3-g0a2730ccd2b39dc3208833aab69d3a0931d50a38

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- sdk/gstreamer-plugins-good.bst
- freedesktop-sdk.bst:bootstrap-import.bst
