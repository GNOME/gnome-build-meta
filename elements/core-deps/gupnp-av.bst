kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-av.git
  track: master
  ref: gupnp-av-0.14.5-0-g9fe909ba5adf4b817825773886bd5f053a6453b7

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
