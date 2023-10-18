kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-av.git
  track: master
  ref: gupnp-av-0.14.1-8-gf6fe413bd06aed4e09f2b5ce9b04dbdf503ac56c

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
