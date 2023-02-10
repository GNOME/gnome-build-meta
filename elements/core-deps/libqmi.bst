kind: meson

sources:
- kind: git_tag
  url: freedesktop:mobile-broadband/libqmi.git
  ref: 1.33.4-dev-0-gfee04486fcff71934b97bbc39e1f676e78b49e6c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- sdk/gtk-doc.bst

depends:
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- core-deps/libmbim.bst
- core-deps/libqrtr-glib.bst
- sdk/glib.bst

variables:
  conf-local: >-
    --enable-more-warnings=no
