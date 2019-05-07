kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-menus.git
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: components/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
