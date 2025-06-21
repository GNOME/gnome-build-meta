kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.54.0-29-g90ce5fa46596abb9194600ef2c0dbc9c3815c9a6

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr.bst
- sdk/gtk.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/keyutils.bst
