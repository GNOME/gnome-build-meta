kind: import
sources:
- kind: ostree
  url: gnome7:crates
  track: crates-vendoring
config:
  source: vendor
  target: '%{datadir}/crates'
public:
  bst:
    integration-commands:
    # Extra Comment
    - mkdir -p /.cargo
    - |
      # Create a system wide override of the crates.io index
      cat > /.cargo/config << EOF
      [source.crates-io]
      replace-with = "local-crates"

      [source.local-crates]
      directory = "%{build-root}/cargo-crates"
      EOF
