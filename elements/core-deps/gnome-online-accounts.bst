kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.52/gnome-online-accounts-3.52.1.tar.xz
  ref: 37c7522ff9454f8371b5a8725bba76ed7430c95b1f9efc7feba6268f052d1eb7
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
