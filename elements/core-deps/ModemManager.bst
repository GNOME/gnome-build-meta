kind: meson

sources:
- kind: tar
  url: freedesktop_files:mobile-broadband/ModemManager/-/archive/1.24.0/ModemManager-1.24.0.tar.gz
  ref: 50e166bb24acb00bcaed814483920dfbc5b26d5424faee974b54c702e425a7c7

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    -Dudevdir=/usr/lib/udev
