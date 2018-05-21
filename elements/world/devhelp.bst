kind: meson
sources:
- kind: git
  url: git_gnome_org:devhelp
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core/gsettings-desktop-schemas.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
