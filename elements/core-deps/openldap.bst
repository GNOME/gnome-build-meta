kind: autotools
sources:
- kind: tar
  url: http://openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.4.45.tgz
depends:
- core-deps/berkeleydb.bst
- filename: base/groff.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build
