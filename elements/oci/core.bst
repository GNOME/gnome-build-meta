kind: script

build-depends:
- freedesktop-sdk.bst:oci/oci-builder.bst
- oci/layers/core-init-scripts.bst
- filename: oci/sdk.bst
  config:
    location: /parent
- filename: oci/layers/core.bst
  config:
    location: /layer

config:
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
    gzip: false
    images:
    - os: linux
      architecture: "%{go-arch}"
      parent:
        image: /parent
      layer: /layer
      comment: "Import Core layer from GNOME OS"
      config:
        User: containeruser
        Labels:
          'com.github.containers.toolbox': 'true'
      index-annotations:
        'org.opencontainers.image.ref.name': 'quay.io/gnome_infrastructure/gnome-build-meta:core-%{branch}'
    EOF
