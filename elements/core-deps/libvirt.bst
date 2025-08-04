kind: meson
sources:
- kind: tar
  url: libvirt:libvirt-11.6.0.tar.xz
  ref: cc0e8c226559b479833c8bc9c77a8ec301482ab0305fcd98d27f11cc6877fd23
- kind: local
  path: files/libvirt/80-libvirt.preset

build-depends:
- core-deps/rpcsvc-proto.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- core-deps/dnsmasq.bst
- core-deps/ebtables.bst
- core-deps/qemu.bst
- core-deps/libpcap.bst
- core-deps/libssh2.bst
- core-deps/slirp-helper.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/dmidecode.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/iproute2.bst
- freedesktop-sdk.bst:components/libnl.bst
- freedesktop-sdk.bst:components/libtirpc.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/lvm2.bst
- freedesktop-sdk.bst:components/open-iscsi.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/parted.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-lib-pciaccess.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Drunstatedir=%{runstatedir}
    -Dapparmor=enabled
    -Dapparmor_profiles=enabled
    -Daudit=enabled
    -Dbash_completion=enabled
    -Dcapng=disabled
    -Dcurl=enabled
    -Ddriver_bhyve=disabled
    -Ddriver_esx=disabled
    -Ddriver_hyperv=disabled
    -Ddriver_libxl=disabled
    -Ddriver_lxc=disabled
    -Ddriver_ch=disabled
    -Ddriver_vz=disabled
    -Ddtrace=disabled
    -Dfuse=enabled
    -Dglusterfs=disabled
    -Dlibiscsi=disabled
    -Dlibpcap=enabled
    -Dlibssh2=enabled
    -Dlibssh=disabled
    -Dnetcf=disabled
    -Dnumactl=disabled
    -Dnumad=disabled
    -Dopenwsman=disabled
    -Dsasl=enabled
    -Dsanlock=disabled
    -Dsecdriver_apparmor=enabled
    -Dsecdriver_selinux=disabled
    -Dselinux=disabled
    -Dstorage_disk=enabled
    -Dstorage_gluster=disabled
    -Dstorage_iscsi=enabled
    -Dstorage_iscsi_direct=disabled
    -Dstorage_rbd=disabled
    -Dstorage_vstorage=disabled
    -Dstorage_zfs=disabled
    -Dwireshark_dissector=disabled
    -Dgit_werror=disabled
    -Dnbdkit=disabled
    -Dnbdkit_config_default=disabled
config:
  install-commands:
    (>):
    - |
      presetdir="$(pkg-config --variable=systemdsystempresetdir systemd)"
      install -Dm644 -t "%{install-root}${presetdir}" 80-libvirt.preset
