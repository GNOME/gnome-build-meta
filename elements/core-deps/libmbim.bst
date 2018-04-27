kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:libmbim/libmbim.git
  track: master
depends:
- sdk/glib.bst
- sdk/gtk-doc.bst
- sdk/libgudev.bst
- base.bst
