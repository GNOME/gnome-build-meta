kind: meson

sources:
- kind: git_repo
  url: github_files:martinpitt/umockdev.git
  track: '*.*.*'
  ref: 0.19.7-0-g39f785a74e3fcfa27ea5096fd7945ad080420d35

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- core-deps/libpcap.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
