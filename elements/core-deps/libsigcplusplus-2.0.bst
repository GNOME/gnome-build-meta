kind: meson
sources:
- kind: git_tag
  url: github:libsigcplusplus/libsigcplusplus.git
  track: libsigc++-2-12
  ref: 2.12.0-4-ge3604a745c4e77987ee1bca04701043145e96bfc
build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/m4.bst
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
