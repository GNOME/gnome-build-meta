kind: manual

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/initial-scripts.bst
- gnomeos/initial-scripts-nvidia-runtime.bst
- filename: gnomeos/filesystem.bst
  config:
    location: '/sysroot'
- filename: gnomeos/filesystem-nvidia-runtime.bst
  config:
    location: '/sysroot-nvidia-runtime'

sources:
- kind: generated
  path: SYSEXT.key
- kind: generated
  path: SYSEXT.crt

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  repart-seed: 53752261-a988-42fb-a585-b35ae0ab2af4
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
  - cp -a /sysroot-nvidia-runtime sysroot-nvidia-runtime
  - |
    prepare-image.sh \
       --sysroot sysroot \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    prepare-image.sh \
       --sysroot sysroot-nvidia-runtime \
       --initscripts /etc/fdsdk/initial_scripts-nvidia-runtime \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    chmod 0711 'sysroot-nvidia-runtime/bin/nvidia-sleep.sh' 'sysroot-nvidia-runtime/lib/systemd/system-sleep/nvidia'

  - |
    mkdir -p sysroot-nvidia-runtime/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >sysroot-nvidia-runtime/usr/lib/extension-release.d/extension-release.nvidia-runtime_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    SYSEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    mkdir -p output
    make-layer sysroot/usr sysroot-nvidia-runtime/usr output/usr

  - |
    mkdir -p output/etc
    cp -T sysroot-nvidia-runtime/usr/lib/os-release output/etc/os-release

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
        --copy-source=output \
        nvidia-runtime-%{systemd-arch}_%{image-version}.raw

  install-commands:
  - |
    mv nvidia-runtime-%{systemd-arch}_%{image-version}.raw %{install-root}
