kind: autotools

sources:
- kind: git_repo
  url: gnome:NetworkManager-openvpn.git
  track: '*.*'
  ref: 1.12.5-0-gd03d6a636866e9be9fbec7977ef377c191fb2988
- kind: local
  path: files/NetworkManager-openvpn/sysusers.conf

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gtk.bst
- sdk/libsecret.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- gnomeos-deps/openvpn.bst

variables:
  conf-local: >-
    --with-gtk4

config:
  install-commands:
    (>):
    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/nm-openvpn.conf"
