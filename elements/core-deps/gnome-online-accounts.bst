kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.50/gnome-online-accounts-3.50.8.1.tar.xz
  ref: 13649ba87def9eeb1e466d4f3b5c91531a0d3d6a66f904b182b0e6abd71501b5
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
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
