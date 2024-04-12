kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.49.4-66-ga5e0a4bbab73f42e577ea1dc03a452590b16c770

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
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
