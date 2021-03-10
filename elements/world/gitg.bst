kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gitg.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gspell.bst
- core-deps/libdazzle.bst
- core-deps/libgit2-glib.bst
- core-deps/libpeas.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview.bst
- sdk/json-glib.bst
- sdk/libgee.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
