kind: autotools

sources:
- kind: tar
  url: github:tuxera/ntfs-3g/archive/refs/tags/2021.8.22.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libgcrypt.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-ldconfig

config:
  install-commands:
    (>):
    - ln -s mount.ntfs-3g %{install-root}%{bindir}/mount.ntfs
