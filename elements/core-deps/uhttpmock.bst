kind: autotools
sources:
- kind: git
  url: github_com:pwithnall/uhttpmock.git
  track: master
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
