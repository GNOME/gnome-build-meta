kind: meson
sources:
- kind: git
  url: git_gnome_org:devhelp
  track: master
depends:
- sdk/WebKitGTK+.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/gsettings-desktop-schemas.bst
- base.bst
