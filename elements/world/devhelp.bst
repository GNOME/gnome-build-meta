kind: meson
sources:
- kind: git
  url: git_gnome_org:devhelp
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core/gsettings-desktop-schemas.bst
- base.bst
