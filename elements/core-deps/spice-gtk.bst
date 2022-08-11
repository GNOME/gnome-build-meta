kind: meson

sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.41.tar.xz

  ref: d8f8b5cbea9184702eeb8cc276a67d72acdb6e36e7c73349fb8445e5bca0969f
build-depends:
- core-deps/python-pyparsing.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/python3-six.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- core-deps/usbredir.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libcap-ng.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dsmartcard=disabled
