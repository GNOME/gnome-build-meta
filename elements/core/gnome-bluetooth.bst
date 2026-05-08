kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-bluetooth.git
  track: master
  ref: 47.1-112-g30a81f13dbc8e6d28fad1af572e903073dac8462

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

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
