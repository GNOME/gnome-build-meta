kind: autotools

sources:
- kind: tar
  url: tar_download_gnome_org:sources/NetworkManager-openconnect/1.2/NetworkManager-openconnect-1.2.6.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/intltool.bst

depends:
- sdk/gcr.bst
- sdk/gtk+-3.bst
- core-deps/NetworkManager.bst
- vm/openconnect.bst

