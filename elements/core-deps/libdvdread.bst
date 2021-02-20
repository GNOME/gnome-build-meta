kind: autotools
sources:
- kind: tar
  url: http://download.videolan.org/pub/videolan/libdvdread/6.1.1/libdvdread-6.1.1.tar.bz2
  ref: 3e357309a17c5be3731385b9eabda6b7e3fa010f46022a06f104553bf8e21796
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
