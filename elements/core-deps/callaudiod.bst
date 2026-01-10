kind: meson

sources:
- kind: git_repo
  url: gitlab:mobian1/callaudiod.git
  track: '*.*'
  ref: 0.1.99-0-g8d262597f41ff787359059ec6a15acd48b7433f6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
