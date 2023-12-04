kind: make

sources:
- kind: tar
  url: https://git.zx2c4.com/wireguard-tools/snapshot/wireguard-tools-1.0.20210914.tar.xz
  base-dir: 'wireguard-tools-1.0.20210914/src'
  ref: 97ff31489217bb265b7ae850d3d0f335ab07d2652ba1feec88b734bc96bd05ac

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/bash-completion.bst

variables:
  make-args: >-
    PREFIX='%{prefix}'
    LIBDIR='%{libdir}'
    BINDIR='%{bindir}'
    MANDIR='%{mandir}'
    WITH_BASHCOMPLETION=yes
    WITH_WGQUICK=yes
    WITH_SYSTEMDUNITS=yes
