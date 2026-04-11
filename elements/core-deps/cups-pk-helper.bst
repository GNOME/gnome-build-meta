kind: meson

sources:
- kind: git_repo
  url: freedesktop:cups-pk-helper/cups-pk-helper.git
  track: '*.*.*'
  ref: 0.2.7-0-gcd8d6422959985bde867f1d57aa55b1f6592e8ed
- kind: local
  path: files/cups-pk-helper/cups-pk-helper.service
- kind: patch
  path: patches/cups-pk-helper/cups-pk-helper-g-variant.patch

build-depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/polkit.bst

config:
  install-commands:
    (>):
    - |
      cat <<EOF >>"%{install-root}%{datadir}/dbus-1/system-services/org.opensuse.CupsPkHelper.Mechanism.service"
      SystemdService=cups-pk-helper.service
      EOF

    - |
      systemdsystemunitdir="$(pkg-config --variable systemdsystemunitdir systemd)"
      install -Dm644 -t "%{install-root}${systemdsystemunitdir}" cups-pk-helper.service
