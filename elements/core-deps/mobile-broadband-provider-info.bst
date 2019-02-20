kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/mobile-broadband-provider-info/20190116/mobile-broadband-provider-info-20190116.tar.xz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
