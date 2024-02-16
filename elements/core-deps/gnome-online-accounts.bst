kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.49.2-6-g6d1c7368815b9753c0b7336b11e8290fe1d9d610

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
