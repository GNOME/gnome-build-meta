kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgnomekbd.git
  track: master
depends:
- core-deps/libxklavier.bst
- sdk/gtk+-3.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
