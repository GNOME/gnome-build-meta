kind: autotools

sources:
- kind: tar
  url: github_files:espeak-ng/espeak-ng/archive/refs/tags/1.52.0.tar.gz
  ref: bb4338102ff3b49a81423da8a1a158b420124b055b60fa76cfb4b18677130a23

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  notparallel: true

config:
  configure-commands:
    (<):
    # force autogen
    - rm -f configure
