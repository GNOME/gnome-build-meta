kind: meson
sources:
- kind: tar
  url: https://libvirt.org/sources/libvirt-7.6.0.tar.xz
  ref: 8f967106d00aabb3cd692724bdd4a9c09e71cb2245053b98193690ee01766141
- kind: local
  path: files/libvirt/80-libvirt.preset
build-depends:
- core-deps/rpcsvc-proto.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- core-deps/dnsmasq.bst
- core-deps/ebtables.bst
- core-deps/qemu.bst
- core-deps/slirp-helper.bst
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
- freedesktop-sdk.bst:components/yajl.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Drunstatedir=%{runstatedir}
    -Dapparmor=disabled
    -Dapparmor_profiles=disabled
    -Daudit=disabled
    -Dbash_completion=disabled
    -Dcapng=disabled
    -Dcurl=disabled
    -Ddriver_bhyve=disabled
    -Ddriver_esx=disabled
    -Ddriver_hyperv=disabled
    -Ddriver_libxl=disabled
    -Ddriver_lxc=disabled
    -Ddriver_ch=disabled
    -Ddriver_vz=disabled
    -Ddtrace=disabled
    -Dfuse=disabled
    -Dglusterfs=disabled
    -Dlibiscsi=disabled
    -Dlibpcap=disabled
    -Dlibssh2=disabled
    -Dlibssh=disabled
    -Dnetcf=disabled
    -Dnumactl=disabled
    -Dnumad=disabled
    -Dopenwsman=disabled
    -Dsasl=disabled
    -Dsanlock=disabled
    -Dsecdriver_apparmor=disabled
    -Dsecdriver_selinux=disabled
    -Dselinux=disabled
    -Dstorage_disk=disabled
    -Dstorage_gluster=disabled
    -Dstorage_iscsi=disabled
    -Dstorage_iscsi_direct=disabled
    -Dstorage_rbd=disabled
    -Dstorage_sheepdog=disabled
    -Dstorage_vstorage=disabled
    -Dstorage_zfs=disabled
    -Dwireshark_dissector=disabled
    -Dgit_werror=disabled
config:
  install-commands:
    (>):
    - |
      presetdir="$(pkg-config --variable=systemdsystempresetdir systemd)"
      install -Dm644 -t "%{install-root}${presetdir}" 80-libvirt.preset
