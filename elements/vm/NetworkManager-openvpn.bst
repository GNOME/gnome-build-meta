kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-openvpn/1.8/NetworkManager-openvpn-1.8.16.tar.xz

  ref: 8920de09c7ae5f1f520c83f844455db8faec31427350268fe2dd95b860f91fb5
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst

depends:
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- vm/openvpn.bst
