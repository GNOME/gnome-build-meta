kind: autotools

sources:
- kind: git_repo
  url: github:lcp/mokutil.git
  track: '*.*'
  ref: 0.7.3-0-g9ddb02fd2e3f5a2cc4dc3b4eacfe2f099916f548

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bash-completion.bst

depends:
- freedesktop-sdk.bst:components/efivar.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/keyutils.bst

variables:
  local_flags: -Wno-error=unterminated-string-initialization
