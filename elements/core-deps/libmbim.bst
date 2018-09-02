kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:libmbim/libmbim.git
  track: master
depends:
- core-deps/libgudev.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
