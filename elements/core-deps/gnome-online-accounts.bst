kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.53/gnome-online-accounts-3.53.2.tar.xz
  ref: 40d5a8d7212ba9cf51e7617c5c6bef004503e36c0bf68f9ad08e9bb2731a1616
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
