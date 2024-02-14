kind: meson

sources:
- kind: git_repo
  url: freedesktop:accountsservice/accountsservice.git
  track: main
  ref: 23.13.9-76-g4a74a4c9aa0b9235f829d35098e891231e9f2b36

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dcreate_homed=true
