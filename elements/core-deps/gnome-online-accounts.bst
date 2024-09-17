kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.52/gnome-online-accounts-3.52.0.tar.xz
  ref: 631953a9d9ea098b268a0bbe2df18cbbec6781589cac6b0455214609ee12bbd8
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
