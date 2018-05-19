kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgnomekbd
  track: master
depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
