kind: script

build-depends:
- freedesktop-sdk.bst:oci/oci-builder.bst
- freedesktop-sdk.bst:oci/platform-oci.bst
- oci/layers/platform.bst
- oci/layers/platform-init-scripts.bst

config:
  layout:
  - element: oci/oci-builder.bst
    destination: /
  - element: oci/layers/platform.bst
    destination: /layer
  - element: oci/platform-oci.bst
    destination: /parent
  - element: oci/layers/platform-init-scripts.bst
    destination: /

  commands:
  - |
    if [ -d /initial_scripts ]; then
      for i in /initial_scripts/*; do
        "${i}" /layer
      done
    fi

  - |
    cd "%{install-root}"
    build-oci <<EOF
    mode: oci
    gzip: False
    images:
    - os: linux
      architecture: "%{go-arch}"
      parent:
        image: /parent
      layer: /layer
      comment: "Import platform layer from GNOME SDK"
      index-annotations:
        'org.opencontainers.image.ref.name': 'registry.gitlab.gnome.org/gnome/gnome-build-meta/gnome-platform:%{branch}'
    EOF
