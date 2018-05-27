kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:vala
  track: master
depends:
- core-deps/glib.bst
- core-deps/graphviz.bst
- filename: core-deps/vala-tarball.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
