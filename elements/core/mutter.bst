kind: meson

sources:
- kind: tar
  url: gnome_downloads:mutter/46/mutter-46.0.tar.xz
  ref: bb3f7d77aebdea9d317d3f5ef03868e4e7969da423ac495e33a16d61db2c9373
- kind: patch
  path: patches/mutter/0001-Revert-backend-native-Use-drmModeCloseFB-for-flicker.patch
build-depends:
- core-deps/xvfb.bst
# Need the whole thing over just the capture for the dbus interface.
# /usr/share/dbus-1/interfaces/org.gnome.Sysprof3.Profiler.xml
- core/sysprof-app.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/xorg-lib-xcvt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
  # xwayland crashes when gnome-control-center not present
- core/gnome-control-center.bst

depends:
- core-deps/colord.bst
- core-deps/libdisplay-info.bst
- core-deps/startup-notification.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/graphene.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/json-glib.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:components/libei.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xorg-lib-ice.bst
- freedesktop-sdk.bst:components/xorg-lib-sm.bst
- freedesktop-sdk.bst:components/xorg-lib-xcursor.bst
- freedesktop-sdk.bst:components/xorg-lib-xtst.bst
- freedesktop-sdk.bst:components/xwayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dxwayland_initfd=enabled
    -Dprofiler=true
    -Dcore_tests=false
