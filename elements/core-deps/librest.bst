kind: autotools
sources:
- kind: tar
  url: gnome_downloads:rest/0.8/rest-0.8.1.tar.xz
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:bootstrap-import.bst
