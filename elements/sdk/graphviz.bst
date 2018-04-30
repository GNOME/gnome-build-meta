kind: autotools
sources:
- kind: tar
  url: https://graphviz.gitlab.io/pub/graphviz/stable/SOURCES/graphviz.tar.gz
depends:
- base.bst
public:
  bst:
    integration-commands:
    - dot -c
