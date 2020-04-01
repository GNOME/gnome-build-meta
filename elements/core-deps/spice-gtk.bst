kind: meson

sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.38.tar.xz

build-depends:
- core-deps/python-pyparsing.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/python3-six.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/phodav.bst
- core-deps/polkit.bst
- core-deps/spice-protocol.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dcelt051=disabled
    -Dlz4=disabled
    -Dusbredir=disabled
    -Dsmartcard=disabled
