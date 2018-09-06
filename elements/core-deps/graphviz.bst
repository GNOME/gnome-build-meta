kind: autotools
sources:
- kind: tar
  url: https://graphviz.gitlab.io/pub/graphviz/stable/SOURCES/graphviz.tar.gz
  ref: ca5218fade0204d59947126c38439f432853543b0818d9d728c589dfe7f3a421
depends:
- sdk/gdk-pixbuf.bst
- sdk/pango.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: config
public:
  bst:
    integration-commands:
    - dot -c
