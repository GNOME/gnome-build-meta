kind: autotools

sources:
- kind: tar
  url: https://github.com/containers/crun/releases/download/0.14.1/crun-0.14.1.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/python3.bst

depends:
- core-deps/yajl.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/libcap.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:bootstrap-import.bst
