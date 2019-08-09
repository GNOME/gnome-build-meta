kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libsecret.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: components/valgrind.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/libgcrypt.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
