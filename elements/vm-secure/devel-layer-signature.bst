kind: manual

build-depends:
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/systemd.bst
- vm-secure/os-release-user.bst
- filename: vm-secure/devel-layer.bst
  config:
    location: '/devel-layer'

environment:
  XZFLAGS: '-T%{max-jobs}'
environment-nocache:
- XZFLAGS

variables:
  repart-seed: fd7f6520-abde-47a2-9430-7514914232be

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
    cat <<EOF >definitions/10-devel.conf
    [Partition]
    Type=root
    Label=gnomeos_usr_dev_%A
    Verity=data
    VerityMatchKey=usr
    CopyBlocks=/devel-layer/devel.usr.raw
    EOF

  - |
    cat <<EOF >definitions/20-devel-verity.conf
    [Partition]
    Type=root-verity
    Label=gnomeos_usr_dev_v_%A
    Verity=hash
    VerityMatchKey=usr
    Minimize=best
    EOF

  - |
    cat <<EOF >definitions/30-devel-verity-signature.conf
    [Partition]
    Type=root-verity-sig
    Label=gnomeos_usr_dev_s_%A
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
        devel.raw \
        --json=pretty \
        >repart.json

  - |
    xz ${XZFLAGS} devel.raw

  install-commands:
  - |
    label="$(jq -r '(.[] | select(.type | match("^root-.*-verity$"))).label' repart.json)"
    image_version="${label##gnomeos_usr_dev_v_}"
    install -Dm644 devel.raw.xz "%{install-root}/devel-%{systemd-arch}_${image_version}.raw.xz"
