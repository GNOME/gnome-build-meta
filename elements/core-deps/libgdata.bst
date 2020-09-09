kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgdata/0.17/libgdata-0.17.13.tar.xz
  ref: eab9ef792c3c2b9ece19d45aea15225aba8df2521bc12785b1b2d3318d8c472e
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- core-deps/uhttpmock.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
