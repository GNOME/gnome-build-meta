kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.46.0-5-gfe86bfb0271735c8130367c46536b08dad5c20d8

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr-3.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
