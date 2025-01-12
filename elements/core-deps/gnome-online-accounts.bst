kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.53/gnome-online-accounts-3.53.0.tar.xz
  ref: 9cc0f9e125c66aca38fc3119404b80f08fb3226f0cddfe27a6c1558c518e38f7
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
