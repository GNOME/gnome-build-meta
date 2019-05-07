kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgovirt.git
  track: master
depends:
- core-deps/librest.bst
- sdk/gobject-introspection.bst
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
