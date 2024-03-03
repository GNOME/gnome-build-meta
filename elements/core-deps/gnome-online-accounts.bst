kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.49/gnome-online-accounts-3.49.4.tar.xz
  ref: 9982bd5376c04574d5429a82c82a592d113c73f2e4746bb6e8b0572864d80928
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
