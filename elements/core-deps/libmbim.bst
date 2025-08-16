kind: meson
sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/libmbim.git
  track: '*.*'
  ref: 1.33.1-dev-0-ge10df4b6b3edfe6a46d93f7f5f5cab31c29a7091
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/help2man.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
