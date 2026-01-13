kind: meson
sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libqmi.git
  track: '*.*'
  exclude:
  - '*-dev'
  ref: 1.38.0-0-ge3d79ed3f7fdc6a7fa8b374860b1c23a8f172812
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
