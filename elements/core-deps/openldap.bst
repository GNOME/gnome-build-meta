kind: autotools

sources:
- kind: tar
  url: openldap:software/download/OpenLDAP/openldap-release/openldap-2.6.9.tgz
  ref: 2cb7dc73e9c8340dff0d99357fbaa578abf30cc6619f0521972c555681e6b2ff

build-depends:
- freedesktop-sdk.bst:components/groff.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-slapd
  local_flags: >-
    -Wno-error=implicit-int
    -Wno-error=int-conversion
