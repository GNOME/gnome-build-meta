kind: script

build-depends:
- gnomeos/save-perms.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/usr/initial-scripts.bst
- gnomeos/nvidia-runtime/initial-scripts.bst
- filename: gnomeos/usr/filesystem.bst
  config:
    location: '/sysroot'
- filename: gnomeos/nvidia-runtime/filesystem.bst
  config:
    location: '/sysroot-nvidia-runtime'

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  install-root: '/output'

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: '/fakecap'

config:
  commands:
  - mkdir /fakecap
  - |
    prepare-image.sh \
       --sysroot /sysroot \
       --initscripts /etc/fdsdk/initial_scripts \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    prepare-image.sh \
       --sysroot /sysroot-nvidia-runtime \
       --initscripts /etc/fdsdk/initial_scripts-nvidia-runtime \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    chmod 0711 '/sysroot-nvidia-runtime/bin/nvidia-sleep.sh' '/sysroot-nvidia-runtime/lib/systemd/system-sleep/nvidia'

  - |
    mkdir -p /sysroot-nvidia-runtime/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >/sysroot-nvidia-runtime/usr/lib/extension-release.d/extension-release.nvidia-runtime_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    SYSEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    mkdir -p /output
    make-layer /sysroot/usr /sysroot-nvidia-runtime/usr /output/usr

  - save-perms.py --save /output/perms-usr.json /output/usr

