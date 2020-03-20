kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/polari.git
  track: master
depends:
- core-deps/gspell.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- world/telepathy-glib.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
