kind: meson

sources:
- kind: git_repo
  url: github:libsigcplusplus/libsigcplusplus.git
  track: master
  ref: 3.6.0-8-g18e6a6ff0f68e929e22e301a5692aaac8f9c3f54

build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dvalidation=false
    -Dwarnings=min
