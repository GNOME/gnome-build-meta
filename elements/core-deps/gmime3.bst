kind: autotools
sources:
- kind: git
  url: git_gnome_org:gmime
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
