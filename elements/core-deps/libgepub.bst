kind: meson
sources:
- kind: git
  url: git_gnome_org:libgepub
  track: master
depends:
- core-deps/WebKitGTK+.bst
- core-deps/glib.bst
- core-deps/libsoup.bst
- base.bst
