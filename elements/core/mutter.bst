kind: meson

sources:
- kind: git_repo
  url: gnome:mutter.git
  track: main
  ref: 49.1-9-g944b6b2a4889e37c5763360f27227ca2c2a91418
# FIXME: Keep this in sync with the repo until we can use wraps as sources
# https://gitlab.gnome.org/GNOME/mutter/-/blob/main/subprojects/gvdb.wrap?ref_type=heads
- kind: git_repo
  url: gnome:gvdb.git
  directory: subprojects/gvdb
  ref: b54bc5da25127ef416858a3ad92e57159ff565b3

build-depends:
- core-deps/python-argcomplete.bst
- core-deps/python-dbusmock.bst
- core-deps/umockdev.bst
- core-deps/zenity.bst
# Need the whole thing over just the capture for the dbus interface.
# /usr/share/dbus-1/interfaces/org.gnome.Sysprof3.Profiler.xml
- core/sysprof-app.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/systemd.bst
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
- sdk/glib.bst
- sdk/glycin.bst
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
- freedesktop-sdk.bst:components/xwayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dxwayland_initfd=enabled
    -Dprofiler=true
    -Dx11=false
