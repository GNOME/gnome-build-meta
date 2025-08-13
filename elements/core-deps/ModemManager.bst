kind: meson

sources:
- kind: tar
  url: 
    freedesktop_files:mobile-broadband/ModemManager/-/archive/1.24.2/ModemManager-1.24.2.tar.gz
  ref: fbc75adcc0d7b0565f256e7ff4e8872b0a37c4413ff576665f7470932d9c1b68

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
