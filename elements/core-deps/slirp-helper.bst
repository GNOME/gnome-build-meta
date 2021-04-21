kind: manual

build-depends:
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:components/libffi.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:components/libslirp.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin

sources:
- kind: tar
  url: https://static.crates.io/crates/libslirp/libslirp-4.3.0.crate
- kind: cargo

config:
  install-commands:
  - cargo install --all-features --path . --root "%{install-root}%{prefix}"
  - rm "%{install-root}%{prefix}"/.crates*
  - ln -s libslirp-helper "%{install-root}%{bindir}/slirp-helper"
