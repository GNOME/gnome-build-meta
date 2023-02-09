kind: meson

sources:
- kind: git_tag
  url: freedesktop:mobile-broadband/libqrtr-glib.git
  track: main
  ref: 1.2.0-15-g756ff802fe9b7e7da8061caefb490d898c0cfe71

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- sdk/gtk-doc.bst

depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst

variables:
  conf-local: >-
    --enable-more-warnings=no
