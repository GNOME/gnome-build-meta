kind: meson

sources:
- kind: tar
  # FIXME: use the proper tarball once its uploaded
  # https://gitlab.freedesktop.org/spice/spice-gtk/-/issues/159
  # url: spice:gtk/spice-gtk-0.41.tar.xz
  url: https://gitlab.freedesktop.org/spice/spice-gtk/uploads/05c649d612f31b60e4aa44a7c44e611c/spice-gtk-0.41.tar.xz

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
