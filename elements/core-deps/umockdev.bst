kind: meson

sources:
- kind: git_repo
  url: github_files:martinpitt/umockdev.git
  track: '*.*.*'
  ref: 0.20.0-0-g73f1a1f4e9343c698edca531b4fd0db673ad0635

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
