kind: autotools
sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20190618/mobile-broadband-provider-info-20190618.tar.xz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
