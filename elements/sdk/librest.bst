kind: autotools
sources:
- kind: tar
  url: gnome_downloads:rest/0.8/rest-0.8.1.tar.xz
  ref: 0513aad38e5d3cedd4ae3c551634e3be1b9baaa79775e53b2dba9456f15b01c9
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:bootstrap-import.bst
