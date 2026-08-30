kind: meson

sources:
- kind: git_repo
  url: gnome:libcloudproviders.git
  track: '*.*.*'
  ref: 0.4.1-0-g74def66cd39ab692b0d477f18250add12aafd394

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
