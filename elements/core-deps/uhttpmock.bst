kind: autotools
sources:
- kind: git
  url: github_com:pwithnall/uhttpmock.git
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
