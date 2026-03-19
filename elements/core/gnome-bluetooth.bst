kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-bluetooth.git
  track: master
  ref: 47.1-104-gdc22787e0dec8d818e6ad5637aca50a23fb927b5

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- core-deps/upower.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/bluez-libs.bst
- freedesktop-sdk.bst:components/bluez.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
