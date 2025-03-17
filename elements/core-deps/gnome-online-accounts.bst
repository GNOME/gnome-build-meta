kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.54/gnome-online-accounts-3.54.1.tar.xz
  ref: 9d058b3aac8b2d8b6b2ae7cb57c8a8abe539e73c88220c315b5b99f87ce6efd8
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
