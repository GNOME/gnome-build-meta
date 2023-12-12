kind: meson

sources:
- kind: git_repo
  url: gnome:gitg.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gspell.bst
- core-deps/gtksourceview-4.bst
- core-deps/libdazzle.bst
- core-deps/libgit2-glib.bst
- core-deps/libpeas-1.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libgee.bst
- sdk/libsecret.bst
- sdk/pygobject.bst
- world/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
