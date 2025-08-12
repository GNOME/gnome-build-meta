kind: meson

sources:
- kind: tar
  url: github_files:hughsie/libjcat/archive/0.2.3.tar.gz
  ref: 9b94aa1915ff392c466c03aa3ad8de320eb625d7a074571de9ec669ab17d405a

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/libgusb.bst
