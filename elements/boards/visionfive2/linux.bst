kind: manual

sources:
- kind: git_tag
  url: github:starfive-tech/VisionFive2.git
  ref: VF2_v3.1.5

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst

config:
  build-commands:
  - make
