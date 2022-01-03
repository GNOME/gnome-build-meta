kind: script

build-depends:
- freedesktop-sdk.bst:oci/oci-builder.bst
- oci/layers/sdk-init-scripts.bst
- filename: oci/sdk.bst
  config:
    location: /parent
- filename: oci/layers/debug.bst
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
    gzip: False
    images:
    - os: linux
      architecture: "%{go-arch}"
      parent:
        image: /parent
      layer: /layer
      comment: "Import debuginfo files from GNOME SDK"
      config:
        Labels:
          'com.github.containers.toolbox': 'true'
    EOF
