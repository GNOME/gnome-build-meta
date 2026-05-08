kind: meson

sources:
- kind: git_repo
  url: freedesktop:accountsservice/accountsservice.git
  track: refs/tags/*
  ref: 26.13.3-0-g97a902fe8a550d8447cf60648e7b5f00c770a4fc

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
