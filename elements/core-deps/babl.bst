kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/babl.git
  track: master
- kind: patch
  path: files/babl/0001-babl-meson.build-Use-python3.patch
depends:
- filename: components/git-minimal.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/lcms.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
