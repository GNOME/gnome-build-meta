kind: meson
sources:
- kind: tar
  url: gnome_downloads:mutter/3.36/mutter-3.36.6.tar.xz
  ref: 7fab160eecf4299e445e24aa34b5e903745ffcc256f82b7f267cd106e435e034
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgudev.bst
- core-deps/libinput.bst
- core-deps/startup-notification.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/graphene.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/pango.bst
- sdk/zenity.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:components/xorg-server.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dprofiler=false
    -Dremote_desktop=false
