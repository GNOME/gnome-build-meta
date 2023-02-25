kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.46.0-67-gd7e5d1dd79efcc6f764cd61e9249831d9160aa8a

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
