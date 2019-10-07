kind: autotools
sources:
- kind: tar
  url: https://graphviz.gitlab.io/pub/graphviz/stable/SOURCES/graphviz.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/libtool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    integration-commands:
    - dot -c
