kind: autotools

sources:
- kind: git_repo
  url: openldap:openldap.git
  track: 'OPENLDAP_REL_ENG_*_*_*'
  ref: OPENLDAP_REL_ENG_2_7_1-0-gc585a93bf4708f7ea5e0c323b16f6b2c9b6db380

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/groff.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --disable-slapd
  local_flags: >-
    -Wno-error=implicit-int
    -Wno-error=int-conversion
