kind: meson

sources:
- kind: tar
  url: gnome_downloads:dconf/0.38/dconf-0.38.0.tar.xz
  ref: 45f60f41330d27715cce1315af123f94f1c2cdedb68b6bed3b309866eec44f58
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dbash_completion=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libdconf.so'
