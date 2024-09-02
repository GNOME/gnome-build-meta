kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.51.3-7-g59693c70cc8f806a869744306e2f6606ee5b2bae

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
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
- freedesktop-sdk.bst:components/keyutils.bst
