kind: autotools

sources:
- kind: git_repo
  url: github:lcp/mokutil.git
  track: 0.6.0
  ref: 0.6.0-0-gb4d8693f04bcf43986aba061845947534b384152

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bash-completion.bst

depends:
- freedesktop-sdk.bst:components/efivar.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/keyutils.bst

variables:
  local_flags: -Wno-error=unterminated-string-initialization
