kind: meson

sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libqrtr-glib.git
  track: '*.*'
  ref: 1.4.0-0-g69791f8f2a092d0ec8eb83cbe51dfc3d157c3079

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
