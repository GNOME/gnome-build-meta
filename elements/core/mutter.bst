kind: meson

sources:
- kind: tar
  url: gnome_downloads:mutter/47/mutter-47.beta.tar.xz
  ref: c89e8044d9d5cb61663a38bde9a19329363e3171f9aafe8ee9ea9bdf1805b7b5
build-depends:
- core-deps/python-dbusmock.bst
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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dxwayland=false
    -Dprofiler=true
    -Dcore_tests=false
    -Dstartup_notification=false
    -Dwayland=true
    -Dsm=false
    -Dglx=false
    -Dx11=false
