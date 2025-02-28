kind: autotools

sources:
- kind: tar
  url: github_files:sass/sassc/archive/refs/tags/3.6.2.tar.gz
  ref: 608dc9002b45a91d11ed59e352469ecc05e4f58fc1259fc9a9f5b8f0f8348a03

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk-deps/libsass.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
