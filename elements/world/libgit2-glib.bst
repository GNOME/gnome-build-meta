kind: meson
sources:
- kind: git
  url: git_gnome_org:libgit2-glib
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/pygobject.bst
- core-deps/vala.bst
- world/libgit2.bst
- world/libssh2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
