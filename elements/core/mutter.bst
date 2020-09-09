kind: meson

sources:
- kind: tar
  url: gnome_downloads:mutter/3.37/mutter-3.37.92.tar.xz
  ref: ade7a7003aaa2be3eeefc6bbdddd0c3f1e203b5a046558f2e44ff6b64a4c6599

build-depends:
- core/sysprof.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
  # xwayland crashes when gnome-control-center not present
- core/gnome-control-center.bst

depends:
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
- sdk/pipewire.bst
- sdk/zenity.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:components/xorg-server.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dxwayland_initfd=disabled
    -Dprofiler=false
