kind: meson

sources:
- kind: tar
  url: github_com:hughsie/libjcat/archive/0.1.6.tar.gz

  ref: 8de77399dd3f7cd055f07003e6fce438ef8339e2bfd90c29982b7ee0a2e72884
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libgusb.bst
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/gpgme.bst
