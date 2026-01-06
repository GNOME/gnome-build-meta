kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.56/gnome-online-accounts-3.56.3.tar.xz
  ref: 38596f17e0269f77e1623a6bf79569573c7bdf7b7cd863fb478a78ae664dea30
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr.bst
- sdk/gtk.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/keyutils.bst
