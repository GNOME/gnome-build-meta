kind: autotools

sources:
- kind: tar
  url: 
    github_files:storaged-project/udisks/releases/download/udisks-2.10.1/udisks-2.10.1.tar.bz2
  ref: b75734ccf602540dedb4068bec206adcb508a4c003725e117ae8f994d92d8ece
- kind: patch
  path: patches/udisks2/calculate-drive-size-from-all-attached-nvme.patch

build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

runtime-depends:
- freedesktop-sdk.bst:components/btrfs-progs.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/e2fsprogs.bst
- freedesktop-sdk.bst:components/exfat-progs.bst
- freedesktop-sdk.bst:components/f2fs-tools.bst
- freedesktop-sdk.bst:components/parted.bst
- freedesktop-sdk.bst:components/util-linux.bst

depends:
- freedesktop-sdk.bst:components/libatasmart.bst
- freedesktop-sdk.bst:components/libblockdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
