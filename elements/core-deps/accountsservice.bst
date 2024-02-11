kind: meson

sources:
- kind: git_repo
  url: freedesktop:accountsservice/accountsservice.git
  track: refs/tags/*
  ref: 23.13.9-0-g57e491f5e6f3da2d5a949f4f8747c8f4e8ed799d

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
  local_flags: >-
    -Wno-error=implicit-function-declaration
