kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libgtop
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: base/texinfo.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
environment:
  CC: gcc -std=c99
