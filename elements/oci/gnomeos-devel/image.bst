kind: script

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/oci-builder.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- oci/gnomeos-devel/init-scripts.bst
- filename: oci/gnomeos/image.bst
  config:
    location: /parent
- filename: oci/gnomeos-devel/filesystem.bst
  config:
    location: /layer

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

variables:
  sysroot-seed: b57666f6-0fe5-4310-adff-f256936d164d

config:
  commands:
  - mkdir /fakecap
  - |
    prepare-image.sh \
       --sysroot /layer \
       --initscripts /initial_scripts \
       --seed "%{sysroot-seed}" \
       --noroot --noboot >/dev/null

  - |
    systemd-sysusers --root /layer

  - |
    cd "%{install-root}"
    build-oci <<EOF
    mode: oci
    gzip: disabled
    images:
    - os: linux
      architecture: "%{go-arch}"
      parent:
        image: /parent
      layer: /layer
      comment: "Import the OS-devel layer from GNOME OS"
      config:
        Labels:
          'com.github.containers.toolbox': 'true'
          'org.opencontainers.image.source': 'https://gitlab.gnome.org/GNOME/gnome-build-meta/'
          'org.opencontainers.image.url': 'https://gitlab.gnome.org/GNOME/gnome-build-meta/'
          'containers.bootc': '1'
      index-annotations:
        'org.opencontainers.image.ref.name': 'quay.io/gnome_infrastructure/gnome-build-meta:gnomeos-devel-%{branch}'
    EOF
