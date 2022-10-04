kind: meson
sources:
- kind: git_tag
  url: gnome:pangomm.git
  track: pangomm-2-46
  ref: 2.46.3-1-g699c4ac56d69fd95a351b1cac137141d9490b349
build-depends:
- core-deps/graphviz.bst
- core-deps/mm-common.bst
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/cairomm-1.0.bst
- core-deps/glibmm-2.4.bst
- sdk/pango.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=true
    -Dwarnings=min
