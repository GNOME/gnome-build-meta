kind: meson

sources:
- kind: git_tag
  url: gnome:gupnp-av.git
  track: master
  ref: gupnp-av-0.14.1-3-gbff65db081ee1ee5df0a42231ebf8e8fbb27cccf

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
