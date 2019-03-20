kind: autotools
sources:
- kind: git_tag
  url: github_com:pwithnall/uhttpmock.git
  track: master
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
