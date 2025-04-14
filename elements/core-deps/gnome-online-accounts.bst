kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.52/gnome-online-accounts-3.52.6.tar.xz
  ref: 0d9722b160c2fe2a9593ef911022feb7cda659f2f661dc3fd44501df84f97fbc
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
