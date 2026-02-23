kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/tar.bst
- freedesktop-sdk.bst:components/zstd.bst
- gnomeos/deps-all.bst

environment:
  ZSTD_OPT: -T%{max-jobs}

environment-nocache:
- ZSTD_OPT

config:
  commands:
  - |
    tar -c --zstd -f '%{install-root}/debug-%{systemd-arch}_%{image-version}.tar.zst' -C %{debugdir} .
