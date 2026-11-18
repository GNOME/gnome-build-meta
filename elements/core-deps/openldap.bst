kind: autotools

sources:
- kind: git_repo
  url: openldap:openldap.git
  track: 'OPENLDAP_REL_ENG_*_*_*'
  ref: OPENLDAP_REL_ENG_2_7_2-0-g5030280ed039f03fe7725a21f892d7f4e0b98076

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
