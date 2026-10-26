kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-bluetooth.git
  track: master
  ref: 47.1-119-gadf070af3c9bf2be15f58bb3ba1cd853d8653162

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst

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
