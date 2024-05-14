kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- filename: core/gnome-software.bst
  config:
    location: '/sysroot'

variables:
  # TODO: how to generate a new seed?
  repart-seed: b463a6db-4868-ce68-d0d4-cf9c68d43913

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
    [ -d "%{build-root}" ] || mkdir -p "%{build-root}"
    [ -d "%{install-root}" ] || mkdir -p "%{install-root}"

  - |
    cp -r /sysroot "%{build-root}/myext"

  - |
    mkdir -p "%{build-root}/myext/usr/lib/extension-release.d"
    cat > "%{build-root}/myext/usr/lib/extension-release.d/extension-release.myext" <<EOF
    ID=_any
    EOF

  - |
    mkdir -p "%{build-root}/tmp"

  - |
    TMPDIR="%{build-root}/tmp" \
    SYSTEMD_LOG_LEVEL=debug \
      systemd-repart \
        --make-ddi=sysext \
        --offline=true \
        --private-key=SYSEXT.key \
        --certificate=SYSEXT.crt \
        --seed %{repart-seed} \
        --copy-source %{build-root}/myext \
        "%{install-root}/myext.sysext.raw" \
        --json=pretty \
        >repart.json

  # TODO: need a compose layer to exclude debug
  # exclude:
  # - debug
  # - devel
  # - doc
