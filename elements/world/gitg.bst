kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gitg.git
  track: master
depends:
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
- world/gtksourceview-3.bst
- world/gtkspell.bst
- world/libgit2-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
