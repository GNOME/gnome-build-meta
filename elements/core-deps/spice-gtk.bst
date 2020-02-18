kind: autotools
sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.36.tar.bz2
  ref: 7126c3584df12d40dcf4970f5f46fafd65b757620f911687e549f7da5c8fd7cd
depends:
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/vala.bst
- filename: components/gstreamer.bst
  junction: freedesktop-sdk.bst
- filename: components/libdrm.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: >-
    --disable-smartcard
    --enable-vala
    --enable-webdav
  conf-aux: build-aux
