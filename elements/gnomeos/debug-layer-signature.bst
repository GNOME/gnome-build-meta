kind: manual

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- gnomeos/os-release-user.bst
- filename: gnomeos/debug-layer.bst
  strict: true
  config:
    location: '/debug-layer'

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
    cat <<EOF >definitions/10-debug.conf
    [Partition]
    Type=root
    Label=gnomeos_dbg_dev_%A
    Verity=data
    VerityMatchKey=dbg
    CopyBlocks=/debug-layer/debug.usr.raw
    EOF

  - |
    cat <<EOF >definitions/20-debug-verity.conf
    [Partition]
    Type=root-verity
    Label=gnomeos_dbg_dev_v_%A
    Verity=hash
    VerityMatchKey=dbg
    Minimize=best
    EOF

  - |
    cat <<EOF >definitions/30-debug-verity-signature.conf
    [Partition]
    Type=root-verity-sig
    Label=gnomeos_dbg_dev_s_%A
    Verity=signature
    VerityMatchKey=dbg
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
        debug.raw

  install-commands:
  - |
    mv debug.raw %{install-root}/debug-%{systemd-arch}_%{image-version}.raw
