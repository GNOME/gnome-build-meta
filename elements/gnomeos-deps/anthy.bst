kind: autotools

sources:
- kind: tar
  url: github_files:fujiwarat/anthy-unicode/releases/download/1.0.0.20240502/anthy-unicode-1.0.0.20240502.tar.gz
  ref: 43a13f24cc4749a1248bc6d0ce7796743b176ae68ee524cb4331bef64ac133b0
- kind: patch
  path: patches/anthy/no-passwd.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
