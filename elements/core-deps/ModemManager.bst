kind: meson

sources:
- kind: git_tag
  url: freedesktop:mobile-broadband/ModemManager.git
  track: 1.21.2
  ref: 1.21.2-0-g2a1851536c3c096ab4e3f26ebe6671b946e665be

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libmbim.bst
- core-deps/libqmi.bst
- core-deps/libqrtr-glib.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --with-udev-base-dir=/usr/lib/udev
    --disable-more-warnings
