kind: meson
sources:
- kind: tar
  url: people_freedesktop_org:~hughsient/appstream-glib/releases/appstream-glib-0.7.17.tar.xz
  ref: 7ca7e91d4accefa1c0d2c6e310cb3fe2686c017810e23b3f82d9f5724345e549
depends:
- sdk/gcab.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
- filename: components/gperf.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: components/libarchive.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dstemmer=false -Drpm=false -Dfonts=false -Ddep11=false
