kind: script

build-depends:
- freedesktop-sdk.bst:oci/oci-builder.bst
- oci/platform.bst
- oci/layers/sdk.bst
- oci/layers/sdk-init-scripts.bst

config:
  layout:
  - element: oci/oci-builder.bst
    destination: /
  - element: oci/layers/sdk.bst
    destination: /layer
  - element: oci/platform.bst
    destination: /parent
  - element: oci/layers/sdk-init-scripts.bst
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
      comment: "Import SDK layer from GNOME SDK"
      config:
        Labels:
          'com.github.containers.toolbox': 'true'
      index-annotations:
        'org.opencontainers.image.ref.name': 'registry.gitlab.gnome.org/gnome/gnome-build-meta/gnome-sdk:%{branch}'
    EOF
