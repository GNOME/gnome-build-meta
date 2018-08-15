depends:
- core-deps/berkeleydb.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: cdd6cffdebcd95161a73305ec13fc7a78e9707b46ca9f84fb897cd5626df3824
  url: http://openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.4.45.tgz
variables:
  conf-aux: build
