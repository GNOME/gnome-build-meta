kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-dlna.git
  track: master
  ref: gupnp-dlna-0.12.0-11-g77ad9dc3d6e89f32bd9d85be70bb3efb4a9e960a

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
