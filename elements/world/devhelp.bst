kind: autotools
sources:
- kind: git
  url: git_gnome_org:devhelp
  track: master
depends:
- base.bst
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core-deps/m4-common.bst
- core-deps/WebKit.bst
- core/gsettings-desktop-schemas.bst
