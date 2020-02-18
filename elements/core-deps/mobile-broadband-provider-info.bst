kind: autotools
sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20190618/mobile-broadband-provider-info-20190618.tar.xz
  ref: c22d64a565d1975b9eecb6ed2eeaef18634bc6f385c8137d05e845d8fb3cce5b
depends:
- filename: components/libxslt.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
