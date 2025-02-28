kind: meson

sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.42.tar.xz
  ref: 9380117f1811ad1faa1812cb6602479b6290d4a0d8cc442d44427f7f6c0e7a58

build-depends:
- core-deps/python-pyparsing.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/python3-six.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- core-deps/usbredir.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/libcap-ng.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dsmartcard=disabled
