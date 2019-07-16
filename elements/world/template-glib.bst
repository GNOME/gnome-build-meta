kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/template-glib.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: components/flex.bst
  junction: freedesktop-sdk.bst
- filename: components/bison.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
