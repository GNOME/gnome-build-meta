kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-openvpn/1.10/NetworkManager-openvpn-1.10.2.tar.xz
  ref: 62f0f2a8782221b923f212ac2a8ebbc1002efd6a90ee945dad4adfb56d076d21

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst

depends:
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- vm/openvpn.bst
