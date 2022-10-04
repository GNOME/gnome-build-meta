kind: meson

sources:
- kind: git_tag
  url: gnome:gupnp-dlna.git
  track: master
  ref: gupnp-dlna-0.12.0-2-g6e558721f3bcc1725b95e0b4de14a4dbb947042e

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
