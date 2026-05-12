kind: autotools

sources:
- kind: git_repo
  url: openldap:openldap.git
  track: 'OPENLDAP_REL_ENG_*_*_*'
  ref: OPENLDAP_REL_ENG_2_6_13-0-gd172686d3d270bc961b78f3ff00d7019c8dfb094

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
