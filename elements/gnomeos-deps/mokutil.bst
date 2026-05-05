kind: autotools

sources:
- kind: git_repo
  url: github:lcp/mokutil.git
  track: '*.*'
  ref: 0.7.2-0-ga0e52a974e3ef222ee454bab76602afd7f4c0440

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bash-completion.bst

depends:
- freedesktop-sdk.bst:components/efivar.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/keyutils.bst

variables:
  local_flags: -Wno-error=unterminated-string-initialization
