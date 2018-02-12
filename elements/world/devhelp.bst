kind: autotools
sources:
- kind: git
  url: git_gnome_org:devhelp
  track: master
depends:
- core-deps/WebKit.bst
- core-deps/appstream-glib.bst
- core-deps/gtk+-3.bst
- core-deps/gtk-doc.bst
- core-deps/m4-common.bst
- base.bst
