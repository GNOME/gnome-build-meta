kind: manual

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- gnomeos/os-release-user.bst
- filename: gnomeos/nvidia-modules-layer.bst
  strict: true
  config:
    location: '/nvidia-modules-layer'

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
    cat <<EOF >definitions/10-nvidia-modules.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_nvm_%A
    Verity=data
    VerityMatchKey=usr
    CopyBlocks=/nvidia-modules-layer/nvidia-modules.usr.raw
    EOF

  - |
    cat <<EOF >definitions/20-nvidia-modules-verity.conf
    [Partition]
    Type=root-verity
    Label=gnomeos_usr_nvm_v_%A
    Verity=hash
    VerityMatchKey=usr
    Minimize=best
    EOF

  - |
    cat <<EOF >definitions/30-nvidia-modules-verity-signature.conf
    [Partition]
    Type=root-verity-sig
    Label=gnomeos_usr_nvm_s_%A
    Verity=signature
    VerityMatchKey=usr
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
        nvidia-modules.raw

  install-commands:
  - |
    mv nvidia-modules.raw "%{install-root}/nvidia-modules-%{systemd-arch}_%{image-version}.raw"
