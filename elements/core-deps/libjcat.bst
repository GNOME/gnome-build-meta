kind: meson

sources:
- kind: git_repo
  url: github:hughsie/libjcat.git
  track: '*.*'
  ref: 0.2.3-0-gf284d18a694ed98f49ddb06e6920265781a30125

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
