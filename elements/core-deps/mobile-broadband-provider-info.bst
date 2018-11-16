kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/mobile-broadband-provider-info/20170310/mobile-broadband-provider-info-20170310.tar.xz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
