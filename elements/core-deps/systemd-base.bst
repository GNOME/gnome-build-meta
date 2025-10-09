kind: meson

# This element is not be used directly. Use either:
#  - freedesktop-sdk.bst:components/systemd.bst
#  - freedesktop-sdk.bst:components/systemd-libs.bst

sources:
- kind: git_repo
  url: github:systemd/systemd.git
  track: v*
  exclude:
  - v258-rc*
  ref: v258-0-g781d9d0789379d1ea1f2ecefb804d41e9c8b6c38

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:bootstrap/sed.bst
- freedesktop-sdk.bst:bootstrap/gawk.bst
- freedesktop-sdk.bst:bootstrap/grep.bst
- freedesktop-sdk.bst:bootstrap/diffutils.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/gperf.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/libapparmor.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libgpg-error.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/lz4.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
- freedesktop-sdk.bst:components/libarchive.bst
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
- freedesktop-sdk.bst:components/python3-pefile.bst
- freedesktop-sdk.bst:components/python3-jinja2.bst
- freedesktop-sdk.bst:components/apparmor.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libqrencode.bst
- freedesktop-sdk.bst:components/iptables.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/libmicrohttpd.bst
- freedesktop-sdk.bst:components/bpf-maybe.bst
- freedesktop-sdk.bst:components/libbpf.bst
- freedesktop-sdk.bst:components/llvm.bst

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
  bpf-framework: 'disabled'
  fallback-ntp-servers: "gnome.pool.ntp.org"
  fallback-dns-servers: >-
    1.1.1.1#one.one.one.one
    1.0.0.1#one.one.one.one
    2606:4700:4700::1111#one.one.one.one
    2606:4700:4700::1001#one.one.one.one
  (?):
  - arch in ["x86_64", "aarch64", "riscv64"]:
      efi: 'true'
  - arch in ["x86_64", "aarch64"]:
      bpf-framework: 'enabled'

  meson-local: >-
    -Dsysvinit-path=%{sysconfdir}/init.d
    -Dsystem-uid-max=999
    -Dsystem-gid-max=999
    -Dusers-gid=100
    -Dbootloader=%{efi}
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
    -Dbpf-framework=%{bpf-framework}
    -Dgnutls=disabled
    -Dglib=disabled
    -Ddbus=disabled
    -Dstatus-unit-format-default=combined
    -Dselinux=disabled
    -Dukify=%{efi}
    -Dkernel-install=true
    -Dvmlinux-h=provided
    -Dvmlinux-h-path='%{includedir}/%{gcc_triplet}/linux/vmlinux.h'

public:
  cpe:
    vendor: 'freedesktop'
    product: 'systemd'
    version-match: '\d+'

  bst:
    split-rules:
      kernel-install:
      - '%{bindir}/kernel-install'
      - '%{datadir}/bash-completion/completions/kernel-install'
      - '%{datadir}/zsh/site-functions/_kernel-install'
      - '%{indep-libdir}/kernel'
      - '%{indep-libdir}/kernel/**'
      - '%{mandir}/man8/kernel-install.8'
      - '%{docdir}/systemd/html/kernel-install.html'
      - '%{debugdir}%{bindir}/kernel-install.debug'
      - '%{sysconfdir}/kernel'
      - '%{sysconfdir}/kernel/**'
      ukify:
      - '%{bindir}/ukify'
      - '%{indep-libdir}/systemd/ukify'
      - '%{mandir}/man1/ukify.1'
      - '%{docdir}/systemd/html/ukify.html'
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
      systemd-license:
      - "%{project_licensedir}"
      - "%{project_licensedir}/**"
