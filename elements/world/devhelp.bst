kind: meson
sources:
- kind: git
  url: git_gnome_org:devhelp
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
