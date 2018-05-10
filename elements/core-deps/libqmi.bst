kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:libqmi.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/libgudev.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
