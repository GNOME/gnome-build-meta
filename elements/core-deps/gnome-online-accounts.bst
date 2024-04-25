kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.50/gnome-online-accounts-3.50.1.tar.xz
  ref: 42ee43fd1e2942b9ff6106252ccdc834602815508bf7a3a52c0bdfffa56eaf40
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
