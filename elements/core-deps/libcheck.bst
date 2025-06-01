kind: autotools
sources:
- kind: tar
  url: github_files:libcheck/check/releases/download/0.15.2/check-0.15.2.tar.gz
  ref: a8de4e0bacfb4d76dd1c618ded263523b53b85d92a146d8835eb1a52932fa20a
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  conf-local: >-
    --disable-timeout-tests
