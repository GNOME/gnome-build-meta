kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gitg
  track: master
depends:
- core-deps/gtksourceview-3.bst
- core-deps/libpeas.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libgee.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/pygobject.bst
- sdk/vala.bst
- world/gtkspell.bst
- world/libgit2-glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
