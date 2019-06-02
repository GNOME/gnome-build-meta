kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libmediaart.git
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-qt
