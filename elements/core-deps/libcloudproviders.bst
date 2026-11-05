kind: meson

sources:
- kind: git_repo
  url: gnome:libcloudproviders.git
  track: '*.*.*'
  ref: 0.4.2-0-gfffdc5c391807e8d00b26adf11182ccad4be8350

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
