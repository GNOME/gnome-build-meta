kind: meson

sources:
- kind: git_repo
  url: gnome:gupnp-av.git
  track: master
  ref: gupnp-av-0.14.5-6-gcecab5069e63253c8c07042a3af7c07f1c3c759b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
