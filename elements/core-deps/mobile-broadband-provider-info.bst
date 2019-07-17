kind: autotools
sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20190618/mobile-broadband-provider-info-20190618.tar.xz
depends:
- filename: components/libxslt.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
