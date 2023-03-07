kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.47.1-12-gb47d8bc6a2974a15c8c4a209340ac71eb866627f

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
