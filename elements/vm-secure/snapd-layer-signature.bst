kind: manual

build-depends:
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/systemd.bst
- vm-secure/os-release-user.bst
- filename: vm-secure/snapd-layer.bst
  config:
    location: '/snapd-layer'

environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

variables:
  repart-seed: c4ffa971-b583-4d0d-bcc8-a9bc6a109aec

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
        snapd.raw \
        --json=pretty \
        >repart.json

  - |
    xz ${XZFLAGS} snapd.raw

  install-commands:
  - |
    label="$(jq -r '(.[] | select(.type | match("^root-.*-verity$"))).label' repart.json)"
    image_version="${label##gnomeos_usr_snapd_v_}"
    install -Dm644 snapd.raw.xz "%{install-root}/snapd_${image_version}.raw.xz"
