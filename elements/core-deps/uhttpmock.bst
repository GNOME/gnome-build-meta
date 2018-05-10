kind: autotools
sources:
- kind: git
  url: github_com:pwithnall/uhttpmock.git
  track: master
depends:
- core-deps/glib.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
