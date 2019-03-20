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
- filename: base.bst
  junction: freedesktop-sdk.bst
