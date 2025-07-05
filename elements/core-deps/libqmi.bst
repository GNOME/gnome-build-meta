kind: meson
sources:
- kind: tar
  url: freedesktop_files:mobile-broadband/libqmi/-/archive/1.36.0/libqmi-1.36.0.tar.gz
  ref: e254fafdd916a78a27126e6d72ae436662487f59c7de84d4d40286059af89093
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/help2man.bst
depends:
- sdk/glib.bst
- core-deps/libqrtr-glib.bst
- core-deps/libmbim.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
