kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.46/gnome-online-accounts-3.46.0.tar.xz
  ref: 5e7859ce4858a6b99d3995ed70527d66e297bb90bbf75ec8780fe9da22c1fcaa
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr-3.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:bootstrap-import.bst
