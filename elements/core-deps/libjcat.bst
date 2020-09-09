kind: meson

sources:
- kind: tar
  url: github_com:hughsie/libjcat/archive/0.1.3.tar.gz
  ref: 70336f56ab0b39274d59ae945528a0ba9c0cd120d664892097f6edc1de098fa6

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
