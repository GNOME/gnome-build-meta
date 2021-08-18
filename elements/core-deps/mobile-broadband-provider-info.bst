kind: autotools
sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20210805/mobile-broadband-provider-info-20210805.tar.xz
  ref: 6bf8a1558ea5541afbc6f7b4415e74cc9f5aa9829b134ecab3ef1c87412568bc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:bootstrap-import.bst
