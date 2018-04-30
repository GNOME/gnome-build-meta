kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgnomekbd
  track: master
depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- base.bst
