kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-desktop
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-gnome-distributor=gnome-build-meta
