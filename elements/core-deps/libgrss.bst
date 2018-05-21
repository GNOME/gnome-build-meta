kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgrss
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
