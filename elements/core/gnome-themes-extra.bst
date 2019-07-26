kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-themes-extra.git
  track: master
depends:
- filename: core-deps/intltool.bst
  type: build
- sdk/cantarell-fonts.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-gtk2-engine
