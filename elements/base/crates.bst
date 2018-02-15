kind: import
sources:
- kind: ostree
  url: gnome7:crates
  track: crates-vendoring
  ref: df52970a3821dcdbc59c683a405591a9ecdd263dea955e1825b878af019b96e2
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
