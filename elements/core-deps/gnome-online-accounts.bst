kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-online-accounts.git
  track: master
  ref: 3.58.0-0-gf373b2902709e0831ae8439c2d48807c60589ed0

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/librest.bst
- sdk/gcr.bst
- sdk/gtk.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/keyutils.bst
