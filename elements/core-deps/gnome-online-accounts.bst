kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.54/gnome-online-accounts-3.54.11.tar.xz
  ref: c2aaffd4c66cdf8c5f1b08ea4e374357b4c667436740f740732bc1069b5e92a5
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
