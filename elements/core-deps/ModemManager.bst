kind: meson

sources:
- kind: git_repo
  url: freedesktop:mobile-broadband/ModemManager.git
  track: '*.*'
  exclude:
  - '*-dev'
  ref: 1.24.2-0-gf2b9ab1ad78d322f32134a444b5b54c6e8160e19

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
