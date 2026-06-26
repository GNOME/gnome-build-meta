kind: meson

sources:
- kind: git_repo
  url: freedesktop:accountsservice/accountsservice.git
  track: refs/tags/*
  ref: 26.26.9-0-g2205cc63b4a6841df780fe449f62d3f7b0fd19b7

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
