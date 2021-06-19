kind: script

build-depends:
- oci/umoci.bst
- freedesktop-sdk.bst:oci/layers/bootstrap.bst

config:
  root-read-only: true
  layout:
  - element: oci/umoci.bst
    destination: /
  - element: oci/layers/bootstrap.bst
    destination: '%{build-root}/layer'

  commands:
  - umoci init --layout %{install-root}
  - umoci new --image %{install-root}
  - umoci insert --image %{install-root} %{build-root}/layer /
  #- umoci config 

