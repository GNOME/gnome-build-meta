kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/babl.git
  track: master
depends:
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
