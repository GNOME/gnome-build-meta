kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-openvpn/1.8/NetworkManager-openvpn-1.8.14.tar.xz

  ref: e7419053fc3b5a7e25f1a7517c313ad4531b6ea280255524ebb85a70c76fdbeb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst

depends:
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- vm/openvpn.bst
