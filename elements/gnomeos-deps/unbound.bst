kind: autotools

sources:
- kind: git_repo
  url: github:NLnetLabs/unbound.git
  track: 'release-*'
  ref: release-1.26.2-0-gf0cd7067d950921427c91ade4ecf060e944f88eb

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bison.bst

depends:
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/openssl.bst

variables:
  conf-local: >-
    --enable-event-api
