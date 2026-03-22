kind: script

build-depends:
- gnomeos/save-perms.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/systemd.bst
- gnomeos/os-release.bst
- filename: gnomeos/debug/filesystem.bst
  config:
    location: '/sysroot'

variables:
  install-root: /sysroot

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: '%{build-root}/fakecap'

config:
  commands:
  - mkdir fakecap
  - |
    mkdir -p /sysroot/usr/lib/extension-release.d
    case "%{branch}" in
      master)
        version_id=Nightly
        ;;
      *)
        version_id="%{branch}"
        ;;
    esac

    commits_url="https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commits/%{commit}"
    cat <<EOF >/sysroot/usr/lib/extension-release.d/extension-release.debug
    ID="org.gnome.os"
    VERSION_ID="${version_id}"
    SYSEXT_LEVEL="%{image-version}"
    GNOMEOS_COMMIT="%{commit}"
    GNOMEOS_COMMIT_DATE="%{commit-date-pretty}"
    GNOMEOS_COMMITS_URL="${commits_url}"
    EOF

  - mkdir -p /sysroot/usr/lib/tmpfiles.d/
  - save-perms.py /sysroot /sysroot/usr/lib/tmpfiles.d/gnomeos-initial-debug.conf /usr /etc
