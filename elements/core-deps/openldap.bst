kind: autotools

sources:
- kind: tar
  url: https://openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.6.0.tgz

build-depends:
- freedesktop-sdk.bst:components/groff.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-slapd
