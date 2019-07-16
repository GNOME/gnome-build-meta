kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/devhelp.git
  track: master
depends:
- sdk/WebKitGTK.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- world/amtk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
