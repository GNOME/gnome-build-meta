kind: meson

sources:
- kind: tar
  url: 
    gitlab_files:mobian1/callaudiod/-/archive/0.1.10/callaudiod-0.1.10.tar.bz2
  ref: 17070205024a4bb75016dad3cc132039dff28d9f3a40226eb283ae3a78ce0ecf

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
