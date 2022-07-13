kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.45/gnome-online-accounts-3.45.1.tar.xz
  ref: 8042de40207e682518e31ed7e35a0ad174eefed52c08b3047e3068a4bd261ea1
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
