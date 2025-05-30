kind: autotools

sources:
- kind: tar
  url: github_files:libhangul/ibus-hangul/releases/download/1.5.5/ibus-hangul-1.5.5.tar.xz
  ref: a5aac88286cd18960229860e3e1a778978a7aeaa484ad9acfa48284b87fdc3bb

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/ibus-daemon.bst
- gnomeos-deps/libhangul.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  configure-commands:
    (<):
    # force autogen
    - rm configure
