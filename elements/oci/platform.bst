kind: script

build-depends:
- oci/umoci.bst
- oci/platform-layer.bst
- oci/platform-init-scripts.bst
- freedesktop-sdk.bst:oci/bootstrap-oci.bst
#- flatpak/sdk-image.bst

config:

  layout:
  - element: oci/umoci.bst
    destination: /
  - elemnts: oci/platform-init-scripts.bst
    destination: /
  - element: oci/bootstrap-oci.bst
    destination: '%{install-root}'
  - element: oci/platform-layer.bst
    destination: '%{build-root}/layer'

  commands:
  - |
    if [ -d /initial_scripts ]; then
      for i in /initial_scripts/*; do
        "${i}" %{build-root}/layer
      done
    fi

  #- umoci init --layout %{install-root}/layout
  #- umoci new --image %{install-root}/layout
  #- umoci insert --image %{install-root}/layout %{build-root}/layer0 /
  #- umoci insert --image %{install-root}/layout %{build-root}/layer1 /
  - umoci insert --image %{install-root} %{build-root}/layer /

