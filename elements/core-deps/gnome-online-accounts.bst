kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.54/gnome-online-accounts-3.54.9.tar.xz
  ref: eb02a496f0b66aecf0bbd2d6c56b72b50967ddfd672f85873c4e61050acb7c81
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
