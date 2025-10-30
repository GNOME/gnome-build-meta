kind: script

build-depends:
- freedesktop-sdk.bst:oci/oci-builder.bst
- oci/layers/gnomeos-init-scripts.bst
- filename: oci/sdk.bst
  config:
    location: /parent
- filename: oci/layers/gnomeos.bst
  config:
    location: /layer

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

config:
  commands:
  - mkdir /fakecap
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
    compression: disabled
    images:
    - os: linux
      architecture: "%{go-arch}"
      parent:
        image: /parent
      layer: /layer
      comment: "Import GNOME OS layer from GNOME OS"
      config:
        Labels:
          'com.github.containers.toolbox': 'true'
          'org.opencontainers.image.source': 'https://gitlab.gnome.org/GNOME/gnome-build-meta/'
          'org.opencontainers.image.url': 'https://gitlab.gnome.org/GNOME/gnome-build-meta/'
          'containers.bootc': '1'
      index-annotations:
        # FIXME:
        # 'org.opencontainers.image.ref.name': 'quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-%{branch}'
        'org.opencontainers.image.ref.name': 'ghcr.io/alatiera/gnomeos-custom/gnomeos-core:nightly'
    EOF
