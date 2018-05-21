kind: autotools
sources:
- kind: tar
  url: https://graphviz.gitlab.io/pub/graphviz/stable/SOURCES/graphviz.tar.gz
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: config
public:
  bst:
    integration-commands:
    - dot -c
