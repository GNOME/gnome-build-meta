kind: manual

sources:
- kind: local
  path: book.toml
- kind: local
  path: docs
  directory: docs
- kind: git_repo
  url: gnome_gitlab:jimmac/gnome-mdbook-style.git
  track: main
  directory: theme
  ref: 7bc865f95c78568a407eac306e2a573ff397abe9

build-depends:
- gnomeos-deps/mdbook.bst
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ''

config:
  build-commands:
  - mdbook build --dest-dir "%{install-root}/book" "%{build-root}"

