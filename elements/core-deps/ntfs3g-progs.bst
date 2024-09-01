kind: autotools

sources:
- kind: tar
  url: tuxera:ntfs-3g_ntfsprogs-2022.10.3.tgz
  ref: f20e36ee68074b845e3629e6bced4706ad053804cbaf062fbae60738f854170c

build-depends:
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:components/libtool.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
# - freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    CFLAGS="${CFLAGS} -D_FILE_OFFSET_BITS=64"
    --disable-static
    --disable-ldconfig
    # --with-fuse=external
    --exec-prefix=/
    --enable-posix-acls
    --enable-xattr-mappings
    --enable-crypto
    --enable-extras
    --enable-quarantined
