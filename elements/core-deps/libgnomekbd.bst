kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:libgnomekbd
  track: master
depends:
- core-deps/gtk+-3.bst
- core-deps/libxklavier.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
