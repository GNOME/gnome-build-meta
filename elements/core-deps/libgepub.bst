kind: meson
sources:
- kind: git
  url: git_gnome_org:libgepub
  track: master
depends:
- core-deps/WebKit.bst
- core-deps/glib.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- base.bst
