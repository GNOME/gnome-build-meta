kind: meson

sources:
- kind: tar
  url: freedesktop_software:cups-pk-helper/releases/cups-pk-helper-0.2.7.tar.xz
- kind: local
  path: files/cups-pk-helper/cups-pk-helper.service

build-depends:
- sdk/glib.bst
- core-deps/intltool.bst
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
