kind: autotools
sources:
- kind: git
  url: git_gnome_org:gitg
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- sdk/json-glib.bst
- core-deps/libgee.bst
- core-deps/libpeas.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/pygobject.bst
- sdk/vala.bst
- sdk/gsettings-desktop-schemas.bst
- world/libgit2-glib.bst
- base.bst
