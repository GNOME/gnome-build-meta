kind: autotools
sources:
- kind: git
  url: git_gnome_org:gitg
  track: master
depends:
- apps/libgit2-glib.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/gtksourceview-3.bst
- core-deps/json-glib.bst
- core-deps/libgee.bst
- core-deps/libpeas.bst
- core-deps/libsecret.bst
- core-deps/libsoup.bst
- core-deps/pygobject.bst
- core-deps/vala.bst
- core/gsettings-desktop-schemas.bst
- base.bst
