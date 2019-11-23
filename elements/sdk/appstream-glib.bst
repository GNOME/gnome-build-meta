kind: meson
sources:
- kind: tar
  url: people_freedesktop_org:~hughsient/appstream-glib/releases/appstream-glib-0.7.16.tar.xz
depends:
- sdk/gcab.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
- filename: base/gettext.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/gperf.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/libarchive.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dstemmer=false -Drpm=false -Dfonts=false -Ddep11=false
