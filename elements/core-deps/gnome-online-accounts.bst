kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.51/gnome-online-accounts-3.51.3.tar.xz
  ref: 5cc9e557b74694bb55c53a33570e146450b6cef3d1c9a414de3a0c7070a90bf5
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
