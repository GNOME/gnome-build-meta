kind: autotools
sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20190618/mobile-broadband-provider-info-20190618.tar.xz
  ref: c22d64a565d1975b9eecb6ed2eeaef18634bc6f385c8137d05e845d8fb3cce5b
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:bootstrap-import.bst
