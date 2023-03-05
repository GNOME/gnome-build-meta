kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.47/gnome-online-accounts-3.47.1.tar.xz
  ref: ddef26cce25544433c7dc60e1f16d3f19362a1a3f99737429f3b1fdaa4c1ea63
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
