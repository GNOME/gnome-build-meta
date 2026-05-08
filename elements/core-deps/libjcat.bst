kind: meson

sources:
- kind: git_repo
  url: github:hughsie/libjcat.git
  track: '*.*'
  ref: 0.2.6-0-g4f4bf849c1728ba291f28cea86d140785368fdd0

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/help2man.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/gpgme.bst
- freedesktop-sdk.bst:components/libgusb.bst
