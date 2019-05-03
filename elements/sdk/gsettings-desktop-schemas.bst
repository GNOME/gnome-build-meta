kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gsettings-desktop-schemas.git
  track: master
- kind: patch
  path: files/gsettings-desktop-schemas/0001-Revert-schemas-change-default-monospaced-and-documen.patch
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
