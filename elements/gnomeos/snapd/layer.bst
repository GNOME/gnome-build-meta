kind: manual

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/usr/initial-scripts.bst
- gnomeos/snapd/initial-scripts.bst
- filename: gnomeos/usr/filesystem.bst
  config:
    location: '/sysroot'
- filename: gnomeos/snapd/filesystem.bst
  config:
    location: '/sysroot-snapd'

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
  EROFS_OPTIONS: -z zstd --all-time -T %{filesystem-time} -E fragments,fragdedupe=inode
  EROFS_WORKERS: --workers=%{max-jobs}
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: '%{build-root}/fakecap'

environment-nocache:
- EROFS_WORKERS

config:
  build-commands:
  - mkdir fakecap
  - cp -a /sysroot sysroot
  - cp -a /sysroot-snapd sysroot-snapd
  - |
    prepare-image.sh \
       --sysroot sysroot \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    prepare-image.sh \
       --sysroot sysroot-snapd \
       --initscripts /etc/fdsdk/initial_scripts-snapd \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    mkdir -p sysroot-snapd/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >sysroot-snapd/usr/lib/extension-release.d/extension-release.snapd_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    SYSEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    mkdir -p sysroot-snapd/etc/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >sysroot-snapd/etc/extension-release.d/extension-release.snapd_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    CONFEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    mkdir -p output

  - |
    make-layer sysroot/usr sysroot-snapd/usr output/usr

  - |
    make-layer sysroot/etc sysroot-snapd/etc output/etc

  - |
    mkdir -p tmp

  - |
    TMPDIR='%{build-root}/tmp' \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --empty=create \
        --make-ddi=sysext \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --private-key=SYSEXT.key \
        --certificate=SYSEXT.crt \
        --seed %{repart-seed} \
        --copy-source=output \
        snapd-%{systemd-arch}_%{image-version}.raw

  - |
    TMPDIR='%{build-root}/tmp' \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --empty=create \
        --make-ddi=sysext \
        --size=auto \
        --dry-run=no \
        --discard=no \
        --offline=true \
        --no-pager \
        --private-key=SYSEXT.key \
        --certificate=SYSEXT.crt \
        --seed %{repart-seed} \
        --copy-source=output \
        snapd-confext-%{systemd-arch}_%{image-version}.raw

  install-commands:
  - |
    mv snapd-%{systemd-arch}_%{image-version}.raw %{install-root}
    mv snapd-confext-%{systemd-arch}_%{image-version}.raw %{install-root}
