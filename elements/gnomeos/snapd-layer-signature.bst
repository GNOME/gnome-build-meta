kind: manual

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- gnomeos/os-release-user.bst
- filename: gnomeos/snapd-layer.bst
  strict: true
  config:
    location: '/snapd-layer'

variables:
  repart-seed: c4ffa971-b583-4d0d-bcc8-a9bc6a109aec
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
    cat <<EOF >definitions/10-snapd.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_snapd_%A
    Verity=data
    VerityMatchKey=root
    CopyBlocks=/snapd-layer/snapd.root.raw
    EOF

  - |
    cat <<EOF >definitions/20-snapd-verity.conf
    [Partition]
    Type=root-verity
    Label=gnomeos_usr_snapd_v_%A
    Verity=hash
    VerityMatchKey=root
    Minimize=best
    EOF

  - |
    cat <<EOF >definitions/30-snapd-verity-signature.conf
    [Partition]
    Type=root-verity-sig
    Label=gnomeos_usr_snapd_s_%A
    Verity=signature
    VerityMatchKey=root
    EOF

  - |
    mkdir -p tmp

  - |
    [ -d "%{install-root}" ] || mkdir -p "%{install-root}"

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
        "%{install-root}/snapd.raw"

  install-commands:
  - |
    mv "%{install-root}/snapd.raw" "%{install-root}/snapd-%{systemd-arch}_%{image-version}.raw"
