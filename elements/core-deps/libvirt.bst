kind: autotools
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-6.5.0.tar.xz
build-depends:
- core-deps/rpcsvc-proto.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- core-deps/dnsmasq.bst
- core-deps/ebtables.bst
- core-deps/qemu.bst
- core-deps/yajl.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/dmidecode.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/libnl.bst
- freedesktop-sdk.bst:components/libtirpc.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/lvm2.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-lib-pciaccess.bst
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  configure-commands:
  - mkdir build
  - |
    cd build
    %{configure}
  build-commands:
  - |
    cd build
    %{make}
  install-commands:
  - |
    cd build
    %{make-install}
  - mv %{install-root}/var/run %{install-root}
variables:
  conf-cmd: ../configure
  # --disable-Werror does not work
  conf-global: >-
    --disable-static
    --host=%{triplet}
    --build=%{triplet}
    --with-init-script=systemd
