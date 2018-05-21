kind: autotools
sources:
- kind: git
  url: git_gnome_org:phodav
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/libsoup.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
