kind: meson

sources:
- kind: git_repo
  url: gnome:libcloudproviders.git
  track: '*.*.*'
  ref: 0.4.0-0-g510f0eee666e4f99e8b11eb55945347db371b47c
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
