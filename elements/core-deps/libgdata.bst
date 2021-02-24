kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgdata.git
  track: master
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- core-deps/uhttpmock.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
