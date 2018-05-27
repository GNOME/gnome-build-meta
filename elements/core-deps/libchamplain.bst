kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libchamplain
  track: master
depends:
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala
