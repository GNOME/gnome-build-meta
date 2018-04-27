kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgnomekbd
  track: master
depends:
- sdk/gtk+-3.bst
- core-deps/libxklavier.bst
- base.bst
