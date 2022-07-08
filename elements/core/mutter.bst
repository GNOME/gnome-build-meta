kind: meson

sources:
- kind: tar
  url: gnome_downloads:mutter/42/mutter-42.3.tar.xz
  ref: 9da3a63f90282bb59467e7d3dfdc684e70fa055357f6a2dded1db98cdcce10ba
build-depends:
# Need the whole thing over just the capture for the dbus interface.
# /usr/share/dbus-1/interfaces/org.gnome.Sysprof3.Profiler.xml
- core/sysprof.bst
- core-deps/libxcvt.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
  # xwayland crashes when gnome-control-center not present
- core/gnome-control-center.bst

depends:
- core-deps/startup-notification.bst
- core-deps/libinput.bst
- core-deps/upower.bst
- core-deps/zenity.bst
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
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:components/xwayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dxwayland_initfd=enabled
    -Dprofiler=true
    -Dtests=false
