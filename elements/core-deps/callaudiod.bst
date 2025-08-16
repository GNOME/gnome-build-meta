kind: meson

sources:
- kind: git_repo
  url: gitlab:mobian1/callaudiod.git
  track: '*.*'
  ref: 0.1.10-0-g56831297817afb6b30062b7cee3e40225ac39cac

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
