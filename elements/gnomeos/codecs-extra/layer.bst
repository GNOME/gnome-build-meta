kind: script

build-depends:
- gnomeos/save-perms.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/erofs-utils.bst
- freedesktop-sdk.bst:vm/prepare-image.bst
- gnomeos/os-release.bst
- gnomeos/codecs-extra/initial-scripts.bst
- filename: gnomeos/codecs-extra/filesystem.bst
  config:
    location: '/sysroot-codecs-extra'

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

    mkdir -p /output/usr/lib/extension-release.d
    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >/output/usr/lib/extension-release.d/extension-release.codecs-extra_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    SYSEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    mkdir -p /output/etc/extension-release.d
    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >/output/etc/extension-release.d/extension-release.codecs-extra_%{image-version}
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    CONFEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - |
    mkdir -p /output/etc/ld.so.conf.d
    cat <<EOF >/output/etc/ld.so.conf.d/01_codecs_extra.conf
    %{libdir}/codecs-extra/lib
    EOF

  - |
    mkdir -p '/output/%{libdir}'
    mv -T '/sysroot-codecs-extra/%{libdir}/codecs-extra' '/output/%{libdir}/codecs-extra'

  - |
    mkdir -p '/output/%{libdir}/GL'
    mv -T '/sysroot-codecs-extra/%{libdir}/GL/default' '/output/%{libdir}/GL/default'

  - save-perms.py /output/perms-usr.json /output/usr
  - save-perms.py /output/perms-etc.json /output/etc
