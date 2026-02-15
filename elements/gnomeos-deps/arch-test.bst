kind: make

sources:
- kind: git_repo
  url: github:kilobyte/arch-test.git
  track: v*
  ref: v0.22-0-ga14e749c3a09acc95fc486103e96516e0f02d187

build-depends:
- freedesktop-sdk.bst:cross-compilers/binutils-aarch64.bst
- freedesktop-sdk.bst:cross-compilers/binutils-riscv64.bst
- freedesktop-sdk.bst:cross-compilers/binutils-x86-64.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

environment:
  PATH: '%{aarch64-path}:%{riscv64-path}:%{x86-64-path}:/usr/bin'

variables:
  aarch64-path: /usr/lib/sdk/toolchain-aarch64/bin
  riscv64-path: /usr/lib/sdk/toolchain-riscv64/bin
  x86-64-path: /usr/lib/sdk/toolchain-x86_64/bin
  strip-binaries: ''

config:
  configure-commands:
  - |
    cat <<EOF >config
    ARCHS=riscv64 arm64 amd64
    RISCV=riscv64-linux-gnu
    EOF

  install-commands:
    (>):
    - |
      rm '%{install-root}%{bindir}/elf-arch'
      rm '%{install-root}%{mandir}/man1/elf-arch.1'
