kind: meson

sources:
- kind: tar
  url: 
    github_files:martinpitt/umockdev/releases/download/0.19.3/umockdev-0.19.3.tar.xz
  ref: 46e45eab6f656bfc092438d7e0e5df4c5f51d18e3a83360c2be680b207a1a0b7

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
