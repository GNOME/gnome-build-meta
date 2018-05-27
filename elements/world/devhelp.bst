kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/devhelp
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core/gsettings-desktop-schemas.bst
- world/amtk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
