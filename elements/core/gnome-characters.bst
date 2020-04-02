kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-characters/3.34/gnome-characters-3.34.0.tar.xz
  ref: 14438572ee2a99305a5d514d83237c01e873a7bb7dfff5478bbb327894ee0a57
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
