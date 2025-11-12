kind: manual

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/initial-scripts.bst
- gnomeos/initial-scripts-snapd.bst
- filename: gnomeos/filesystem.bst
  config:
    location: '/sysroot-lower'
- filename: gnomeos/filesystem-snapd.bst
  config:
    location: '/sysroot-upper'

sources:
- kind: local
  path: files/boot-keys/SYSEXT.key
- kind: local
  path: files/boot-keys/SYSEXT.crt

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 42a68ae3-36dd-4549-a0e6-47404842b63e
  strip-binaries: ''

environment:
  EROFS_OPTIONS: -z zstd --all-time -T %{filesystem-time} -E all-fragments,fragdedupe=inode
  EROFS_WORKERS: --workers=%{max-jobs}
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: '%{build-root}/fakecap'

environment-nocache:
- EROFS_WORKERS

config:
  build-commands:
  - mkdir fakecap
  - cp -a /sysroot-lower sysroot-lower
  - cp -a /sysroot-upper sysroot-upper
  - |
    prepare-image.sh \
       --sysroot sysroot-lower \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    prepare-image.sh \
       --sysroot sysroot-upper \
       --initscripts /etc/fdsdk/initial_scripts-snapd \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    cat >sysroot-upper/usr/lib/tmpfiles.d/extra-etc-snapd.conf<<EOF
    L /etc/apparmor
    L /etc/apparmor.d
    L /etc/profile.d/snapd.sh
    L /etc/xdg/autostart/snap-userd-autostart.desktop
    d /snap
    EOF

  - |
    mkdir -p sysroot-upper/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac
    cat <<EOF >sysroot-upper/usr/lib/extension-release.d/extension-release.snapd_%{image-version}
    ID=org.gnome.os
    VERSION_ID=${version_id}
    SYSEXT_LEVEL=%{image-version}
    EOF

  - |
    mkdir -p sysroot
    make-layer sysroot-lower/usr sysroot-upper/usr sysroot/usr

  - |
    mkdir -p sysroot/usr/share/factory/etc
    cp -rT sysroot-upper/etc/apparmor sysroot/usr/share/factory/etc/apparmor
    cp -rT sysroot-upper/etc/apparmor.d sysroot/usr/share/factory/etc/apparmor.d
    mkdir -p sysroot/usr/share/factory/etc/profile.d
    cp -rT sysroot-upper/etc/profile.d/snapd.sh sysroot/usr/share/factory/etc/profile.d/snapd.sh
    mkdir -p sysroot/usr/share/factory/etc/xdg/autostart
    cp -rT sysroot-upper/etc/xdg/autostart/snap-userd-autostart.desktop sysroot/usr/share/factory/etc/xdg/autostart/snap-userd-autostart.desktop

  - |
    mkdir -p sysroot/etc
    cp -T sysroot-upper/usr/lib/os-release sysroot/etc/os-release

  - |
    mkdir -p tmp

  - |
    TMPDIR='%{build-root}/tmp' \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --make-ddi=sysext \
        --empty=create \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --private-key=SYSEXT.key \
        --certificate=SYSEXT.crt \
        --seed %{repart-seed} \
        --copy-source=sysroot \
        snapd-%{systemd-arch}_%{image-version}.raw

  install-commands:
  - |
    mv snapd-%{systemd-arch}_%{image-version}.raw %{install-root}
