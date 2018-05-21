kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libchamplain
  track: master
depends:
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/libsoup.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala
