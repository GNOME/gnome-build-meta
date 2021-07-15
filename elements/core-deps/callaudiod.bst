kind: meson
sources:
- kind: tar
  url: gitlab_com:mobian1/callaudiod/-/archive/0.1.0/callaudiod-0.1.0.tar.bz2
  ref: c44300d07ac19a37b6be23f65ea1e1b1399b0b75833977d9f7ead31a591fa70a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:bootstrap-import.bst
