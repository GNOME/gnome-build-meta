kind: autotools

sources:
- kind: git_repo
  url: github:fujiwarat/anthy-unicode.git
  track: '*.*'
  ref: 1.0.0.20240502-0-ge63d1d67caa95886076ac1f6033469e03b36c990
- kind: patch
  path: patches/anthy/no-passwd.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
