kind: autotools

sources:
- kind: git_repo
  url: openldap:openldap.git
  track: 'OPENLDAP_REL_ENG_*_*_*'
  ref: OPENLDAP_REL_ENG_2_6_10-0-g22fe35c6b4098e3ad166469f9574c79832c42952

build-depends:
- freedesktop-sdk.bst:components/groff.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --disable-slapd
  local_flags: >-
    -Wno-error=implicit-int
    -Wno-error=int-conversion
