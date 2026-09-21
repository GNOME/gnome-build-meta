kind: meson

sources:
- kind: git_repo
  url: github_files:martinpitt/umockdev.git
  track: '*.*.*'
  ref: 0.19.9-0-gfe4701458b4004ac5ae592023ec0d02692a102c6

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libpcap.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
