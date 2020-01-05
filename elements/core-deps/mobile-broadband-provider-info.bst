kind: autotools
sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20190618/mobile-broadband-provider-info-20190618.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:bootstrap-import.bst
