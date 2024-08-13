kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.51/gnome-online-accounts-3.51.1.tar.xz
  ref: 2dfa2494c0c23bc96632096eb8bc7359193fefcd3e442353ba0a8c347345b432
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
