kind: meson

sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libqrtr-glib.git
  track: '*.*'
  ref: 1.2.2-0-g8991f0e93713ebf4da48ae4f23940ead42f64c8c

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
