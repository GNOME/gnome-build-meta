kind: autotools

sources:
- kind: tar
  url: cdn_kernel_org:linux/bluetooth/bluez-5.54.tar.xz

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- core-deps/libical.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

variables:
  conf-local: >-
    --enable-library

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libbluetooth.so'
