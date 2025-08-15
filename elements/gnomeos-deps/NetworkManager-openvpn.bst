kind: autotools

sources:
- kind: tar
  url: 
    gnome_downloads:NetworkManager-openvpn/1.12/NetworkManager-openvpn-1.12.2.tar.xz
  ref: aa1b5f9addf8d64bc8c459361cf0d5e3eb99f14b60ea82a3500631928af62a6f
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
