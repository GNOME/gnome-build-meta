kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:libmbim/libmbim.git
  track: master
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- sdk/gtk-doc.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
