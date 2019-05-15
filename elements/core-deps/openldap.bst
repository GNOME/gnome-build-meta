kind: autotools
sources:
- kind: tar
  url: http://openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.4.45.tgz
depends:
- core-deps/berkeleydb.bst
- filename: components/groff.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build
config:
  install-commands:
    (>):
    - mv %{install-root}/var/run %{install-root}
