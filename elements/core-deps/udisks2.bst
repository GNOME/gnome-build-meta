kind: autotools

sources:
- kind: git_repo
  url: github:storaged-project/udisks.git
  track: 'udisks-*.*.*'
  ref: udisks-2.11.1-0-g6375ff14d3fed5f20c66ff50cfc02844473294a1

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst

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
