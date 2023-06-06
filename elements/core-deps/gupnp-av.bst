kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-av.git
  track: master
  ref: gupnp-av-0.14.1-7-g4da2f88f891883f52a40ff92432119a6083167cb

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
