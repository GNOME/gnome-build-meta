kind: make

sources:
- kind: git_repo
  url: github:libreswan/libreswan.git
  track: 'v*'
  ref: v5.4.1-0-g20b98a0a4a2f0c43eb436f81b3efdc9a02142958

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/make.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/xmlto.bst

depends:
- gnomeos-deps/ldns.bst
- gnomeos-deps/unbound.bst
- freedesktop-sdk.bst:components/libevent.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/nspr.bst
- freedesktop-sdk.bst:components/nss.bst

variables:
  make-args: >-
    DEFAULT_DNSSEC_ROOTKEY_FILE=/etc/unbound/root.key
    INITSYSTEM=systemd
    USE_NFTABLES=true
    USE_SECCOMP=true
    USE_LIBCURL=true
    USE_AUTHPAM=true
    USE_LIBCAP_NG=true
    USE_DNSSEC=true
    LINUX_VARIANT='org.freedesktop.platform org.gnome.os'
