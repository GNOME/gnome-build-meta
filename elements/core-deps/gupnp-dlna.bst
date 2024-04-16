kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-dlna.git
  track: master
  ref: gupnp-dlna-0.12.0-7-g89cb27748de60658f4fe3a38eb941d064c0ab8ca

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
- freedesktop-sdk.bst:bootstrap-import.bst
