kind: meson

# This element is not be used directly. Use either:
#  - core-deps/systemd.bst
#  - freedestkop-sdk.bst:components/systemd-libs.bst

sources:
- kind: git_repo
  url: github:systemd/systemd.git
  track: main
  ref: v257-2791-gbe1f90d97fb1295247aed6bd1286ebcd42408c30

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/bpf.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libgpg-error.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/lz4.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:components/pyelftools.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/cryptsetup-lvm2-stage1.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:components/libfido2.bst
- freedesktop-sdk.bst:components/libidn2.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/python3-lxml.bst
- freedesktop-sdk.bst:components/apparmor.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libqrencode.bst
- freedesktop-sdk.bst:components/iptables.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/llvm.bst # for compiling bpf
- freedesktop-sdk.bst:components/libmicrohttpd.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libbpf.bst
- core-deps/python-pefile.bst

config:
  install-commands:
    (>):
    - |
      shopt -s nullglob
      for name in %{install-root}%{indep-libdir}/systemd/boot/efi/*.elf.stub
      do
      chmod a-x ${name}
      done
      shopt -u nullglob

variables:
  efi: 'false'
  bootloader: 'disabled'
  (?):
  - arch in ["x86_64", "i686", "arm", "aarch64", "riscv64"]:
      efi: 'true'
      bootloader: 'enabled'
  fallback-ntp-servers: "gnome.pool.ntp.org"
  fallback-dns-servers: >-
    1.1.1.1#one.one.one.one
    1.0.0.1#one.one.one.one
    2606:4700:4700::1111#one.one.one.one
    2606:4700:4700::1001#one.one.one.one
  meson-local: >-
    -Dsysvinit-path=%{sysconfdir}/init.d
    -Dsystem-uid-max=999
    -Dsystem-gid-max=999
    -Dusers-gid=100
    -Dbootloader=%{bootloader}
    -Defi=%{efi}
    -Dfirstboot=true
    -Dntp-servers="%{fallback-ntp-servers}"
    -Ddns-servers="%{fallback-dns-servers}"
    -Ddefault-dnssec=no
    -Didn=true
    -Dman=enabled
    -Dhtml=enabled
    -Dtpm=true
    -Dsbat-distro=gnome-os
    -Dsbat-distro-generation=1
    -Dsbat-distro-summary="GNOME OS"
    -Dsbat-distro-url=https://gitlab.gnome.org/GNOME/gnome-build-meta
    -Dversion-tag="$(git describe --abbrev=7 | sed "s/^v//")"
    -Dxenctrl=disabled
    -Dgnutls=disabled
    -Dglib=disabled
    -Ddbus=disabled
    -Dstatus-unit-format-default=combined
    -Dselinux=disabled

public:
  cpe:
    vendor: 'freedesktop'
    product: 'systemd'
    version-match: '\d+'

  bst:
    split-rules:
      systemd-libs:
      - '%{libdir}'
      - '%{libdir}/libsystemd*.so*'
      - '%{libdir}/libudev*.so*'
      - '%{libdir}/libnss_resolve.so*'
      - '%{libdir}/pkgconfig'
      - '%{libdir}/pkgconfig/libsystemd.pc'
      - '%{libdir}/pkgconfig/libudev.pc'
      - '%{includedir}'
      - '%{includedir}/libudev.h'
      - '%{includedir}/systemd'
      - '%{includedir}/systemd/**'
      - '%{debugdir}/dwz/%{stripdir-suffix}/*'
      - '%{debugdir}%{libdir}/libsystemd*.so*'
      - '%{debugdir}%{libdir}/libudev*.so*'
      - '%{debugdir}%{libdir}/libnss_resolve.so*'
      - '%{sourcedir}'
      - '%{sourcedir}/**'
