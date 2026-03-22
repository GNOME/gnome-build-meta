kind: script

build-depends:
- gnomeos/save-perms.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/jq.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/make-layer.bst
- gnomeos/usr/initial-scripts.bst
- gnomeos/devel/initial-scripts.bst
- filename: gnomeos/usr/filesystem.bst
  config:
    location: '/sysroot'
- filename: gnomeos/devel/filesystem.bst
  config:
    location: '/sysroot-devel'

variables:
  sysroot-seed: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  install-root: /output

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
       --sysroot /sysroot-devel \
       --initscripts /etc/fdsdk/initial_scripts-devel \
       --seed "%{sysroot-seed}" \
       --noroot --noboot --nodepmod >/dev/null

  - |
    mkdir -p /sysroot-devel/etc/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >/sysroot-devel/etc/extension-release.d/extension-release.devel_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    CONFEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    mkdir -p /output/etc
    make-layer /sysroot/etc /sysroot-devel/etc /output/etc

  - |
    mkdir -p /sysroot-devel/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >/sysroot-devel/usr/lib/extension-release.d/extension-release.devel_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    SYSEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    mkdir -p /output
    make-layer /sysroot/usr sysroot-devel/usr /output/usr

  - mkdir -p /output/usr/lib/tmpfiles.d/
  - save-perms.py /output /output/usr/lib/tmpfiles.d/gnomeos-initial-devel.conf /usr /etc
