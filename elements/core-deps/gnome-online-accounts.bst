kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.55/gnome-online-accounts-3.55.2.tar.xz
  ref: 91d024856c38004c2b2fe6fdad5a0187e6a806ff3e1ed20020b9340e0d480aef
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
