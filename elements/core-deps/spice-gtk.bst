kind: autotools
sources:
- kind: tar
  url: spice:gtk/spice-gtk-0.36.tar.bz2
  ref: 7126c3584df12d40dcf4970f5f46fafd65b757620f911687e549f7da5c8fd7cd
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/phodav.bst
- core-deps/spice-protocol.bst
- sdk/glib.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-smartcard
    --enable-vala
    --enable-webdav
