depends:
- core-deps/gdk-pixbuf.bst
- core-deps/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
public:
  bst:
    integration-commands:
    - dot -c
sources:
- kind: tar
  ref: ca5218fade0204d59947126c38439f432853543b0818d9d728c589dfe7f3a421
  url: https://graphviz.gitlab.io/pub/graphviz/stable/SOURCES/graphviz.tar.gz
variables:
  conf-aux: config
