kind: meson
sources:
- kind: tar
  url: https://github.com/hughsie/libxmlb/archive/0.1.7.tar.gz
  ref: 34be33bb90b521c02ed53c359f088259a74ca75becb422d015f6f38e96a42245
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dstemmer=false
