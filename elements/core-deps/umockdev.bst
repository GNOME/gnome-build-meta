kind: meson

sources:
- kind: tar
  url: github_files:martinpitt/umockdev/releases/download/0.19.1/umockdev-0.19.1.tar.xz
  ref: 2cece0e8e366b89b4070be74f3389c9f7fa21aca56d8a5357e96e30cd8d4f426

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
