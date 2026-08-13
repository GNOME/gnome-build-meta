kind: autotools

sources:
- kind: git_repo
  url: openldap:openldap.git
  track: 'OPENLDAP_REL_ENG_*_*_*'
  ref: OPENLDAP_REL_ENG_2_7_0-0-gcbc3211e0f9c01e4fbf5c795ccdffd57d9ce660b

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
