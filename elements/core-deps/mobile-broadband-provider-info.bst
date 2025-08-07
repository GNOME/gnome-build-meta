kind: meson

sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20240407/mobile-broadband-provider-info-20240407.tar.xz
  ref: 89bfeff215f4bff8e9c3ff2ec25250fdb080d11e9bfa59c6fc71982ac01c814a
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
