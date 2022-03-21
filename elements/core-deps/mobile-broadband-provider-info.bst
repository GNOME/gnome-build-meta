kind: autotools
sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20220315/mobile-broadband-provider-info-20220315.tar.xz
  ref: 1fcdac72d179db1427978366f701be1c3c7535fd5a658bc5cc828247c6f645c6
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
