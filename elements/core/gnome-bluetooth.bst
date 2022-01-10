kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-bluetooth/42/gnome-bluetooth-42.alpha.tar.xz
  ref: 66051b54ffae999e78ffe8b5c777c3fc1439bac7093b9c377ed782fea141f4db
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dsendto=false
