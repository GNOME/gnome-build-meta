kind: filter

build-depends:
- sdk-metadata-compose.bst

config:
  include:
      - export-docs
      - export-vapi
      - export-gir
      - export-gir-arch
  include-orphans: false
