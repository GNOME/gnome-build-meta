kind: meson

sources:
- kind: git_tag
  url: gnome:gupnp-av.git
  track: master
  ref: gupnp-av-0.14.1-4-g9557768121d54fdcedabe7544863515d6a813354

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
