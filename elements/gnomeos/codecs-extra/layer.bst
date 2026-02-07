kind: manual

build-depends:
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/os-release.bst
- gnomeos/codecs-extra/initial-scripts.bst
- filename: gnomeos/codecs-extra/filesystem.bst
  config:
    location: '/sysroot-codecs-extra'

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
  - cp -a /sysroot-codecs-extra sysroot-codecs-extra
  - |
    prepare-image.sh \
       --sysroot sysroot-codecs-extra \
       --initscripts /etc/fdsdk/initial_scripts-codecs-extra \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >extension-release.codecs-extra_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    SYSEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    mkdir -p output/usr/lib/extension-release.d
    cp extension-release.codecs-extra_%{image-version} output/usr/lib/extension-release.d/

  - |
    mkdir -p output/etc/extension-release.d
    cp extension-release.codecs-extra_%{image-version} output/etc/extension-release.d/

  - |
    mkdir -p output/etc/ld.so.conf.d
    cat <<EOF >output/etc/ld.so.conf.d/01_codecs_extra.conf
    %{libdir}/codecs-extra/lib
    EOF

  - |
    mkdir -p 'output/%{libdir}'
    mv -T 'sysroot-codecs-extra/%{libdir}/codecs-extra' 'output/%{libdir}/codecs-extra'

  - |
    mkdir -p 'output/%{libdir}/GL'
    mv -T 'sysroot-codecs-extra/%{libdir}/GL/default' 'output/%{libdir}/GL/default'

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
        codecs-extra-%{systemd-arch}_%{image-version}.raw

  - |
    TMPDIR='%{build-root}/tmp' \
    SYSTEMD_LOG_LEVEL=debug \
    SYSTEMD_REPART_MKFS_OPTIONS_EROFS="${EROFS_OPTIONS} ${EROFS_WORKERS}" \
      systemd-repart \
        --make-ddi=confext \
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
        codecs-extra-confext-%{systemd-arch}_%{image-version}.raw

  install-commands:
  - |
    mv codecs-extra-%{systemd-arch}_%{image-version}.raw %{install-root}
    mv codecs-extra-confext-%{systemd-arch}_%{image-version}.raw %{install-root}
