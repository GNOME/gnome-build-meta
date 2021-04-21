kind: manual

build-depends:
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/libffi.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/libslirp.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst

sources:
- kind: tar
  url: https://static.crates.io/crates/libslirp/libslirp-4.3.0.crate
- kind: cargo
- kind: patch
  path: files/slirp-helper/nix-riscv.patch

config:
  install-commands:
  - cargo install --all-features --path . --root "%{install-root}%{prefix}"
  - rm "%{install-root}%{prefix}"/.crates*
  - ln -s libslirp-helper "%{install-root}%{bindir}/slirp-helper"
