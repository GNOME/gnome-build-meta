kind: stack

# TODO:
# - We're missing the pkcs11-provider package, which would enable us to use
#   a PKCS11 token to sign our images. For now we can only use basic key files

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:bootstrap/acl.bst
- freedesktop-sdk.bst:bootstrap/attr.bst
- freedesktop-sdk.bst:bootstrap/bash.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:bootstrap/coreutils.bst
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/diffutils.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/e2fsprogs.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:components/findutils.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/grep.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:components/less.bst
- freedesktop-sdk.bst:components/mtools.bst
- freedesktop-sdk.bst:components/nano.bst
- gnomeos-deps/opensc.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/ovmf-maybe.bst
- freedesktop-sdk.bst:components/perf.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- core-deps/qemu.bst
- gnomeos-deps/socat.bst
- freedesktop-sdk.bst:components/squashfs-tools.bst
- freedesktop-sdk.bst:components/strace.bst
- gnomeos-deps/swtpm.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- freedesktop-sdk.bst:components/tar.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
- gnomeos-deps/virtiofsd.bst
- gnomeos-deps/virt-firmware.bst
- freedesktop-sdk.bst:components/xz.bst
- freedesktop-sdk.bst:components/zstd.bst
