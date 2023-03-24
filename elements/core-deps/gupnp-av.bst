kind: meson

sources:
- kind: git_tag
  url: gnome:gupnp-av.git
  track: master
  ref: gupnp-av-0.14.1-2-g767388bc16e08d4e1e1f419555165cc1816be931
- kind: patch
  path: files/gupnp-av/werror.patch

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk-deps/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gupnp.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
