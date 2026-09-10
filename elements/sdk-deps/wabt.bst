kind: cmake

sources:
- kind: git_repo
  url: github:WebAssembly/wabt.git
  track: "*.*.*"
  ref: 1.0.41-0-g03a00a1334e6121fb0cce4fccbd6bb109b68acaa
- kind: git_module
  url: github:WebAssembly/wasm-c-api.git
  path: third_party/wasm-c-api
  ref: b6dd1fb658a282c64b029867845bc50ae59e1497

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DBUILD_TESTS=OFF
