kind: autotools
sources:
- kind: git
  url: git_gnome_org:libcroco
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
