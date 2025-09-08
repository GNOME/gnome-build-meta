kind: manual

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- gnomeos/os-release-user.bst
- filename: gnomeos/nvidia-runtime-layer.bst
  strict: true
  config:
    location: '/nvidia-runtime-layer'

variables:
  repart-seed: fd7f6520-abde-47a2-9430-7514914232be
  strip-binaries: ''

sources:
- kind: local
  path: files/boot-keys/SYSEXT.key
- kind: local
  path: files/boot-keys/SYSEXT.crt

config:
  build-commands:
  - |
    chmod 0600 SYSEXT.key

  - |
    mkdir -p definitions

  - |
    cat <<EOF >definitions/10-nvidia-runtime.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_nvr_%A
    Verity=data
    VerityMatchKey=root
    CopyBlocks=/nvidia-runtime-layer/nvidia-runtime.root.raw
    EOF

  - |
    cat <<EOF >definitions/20-nvidia-runtime-verity.conf
    [Partition]
    Type=root-verity
    Label=gnomeos_usr_nvr_v_%A
    Verity=hash
    VerityMatchKey=root
    Minimize=best
    EOF

  - |
    cat <<EOF >definitions/30-nvidia-runtime-verity-signature.conf
    [Partition]
    Type=root-verity-sig
    Label=gnomeos_usr_nvr_s_%A
    Verity=signature
    VerityMatchKey=root
    EOF

  - |
    mkdir -p tmp

  - |
    TMPDIR='%{build-root}/tmp' \
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --definitions=definitions \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --private-key=SYSEXT.key \
        --certificate=SYSEXT.crt \
        --seed %{repart-seed} \
        nvidia-runtime.raw

  install-commands:
  - |
    mv nvidia-runtime.raw %{install-root}/nvidia-runtime-%{systemd-arch}_%{image-version}.raw
