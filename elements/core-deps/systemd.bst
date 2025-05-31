kind: filter

build-depends:
- core-deps/systemd-base.bst

runtime-depends:
- freedesktop-sdk.bst:bootstrap/libxcrypt.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/systemd-hwdb.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/libgpg-error.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:components/systemd-manifest.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
- freedesktop-sdk.bst:components/libidn2.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/kbd.bst
- freedesktop-sdk.bst:components/cryptsetup.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:components/libfido2.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/libapparmor.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/libqrencode.bst
- freedesktop-sdk.bst:components/iptables.bst
- freedesktop-sdk.bst:components/libmicrohttpd.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst

config:
  exclude:
  - systemd-libs

  include-orphans: True

public:
  bst:
    split-rules:
      runtime:
        (>):
        - '%{indep-libdir}/environment.d/**'
        - '%{indep-libdir}/kernel/**'
        - '%{indep-libdir}/modprobe.d/**'
        - '%{indep-libdir}/sysctl.d/**'
        - '%{indep-libdir}/systemd/**'
        - '%{indep-libdir}/sysusers.d/**'
        - '%{indep-libdir}/tmpfiles.d/**'
        - '%{indep-libdir}/udev/**'
        - '%{datadir}/bash-completion/**'
        - '%{datadir}/dbus-1/**'
        - '%{datadir}/factory/**'
        - '%{datadir}/polkit-1/**'
        - '%{datadir}/systemd/**'
        - '%{datadir}/zsh/**'
        - '%{sysconfdir}/**'
        - '%{localstatedir}/**'
