kind: autotools
sources:
- kind: tar
  url: https://www.openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.4.58.tgz
  ref: 57b59254be15d0bf6a9ab3d514c1c05777b02123291533134a87c94468f8f47b
build-depends:
- freedesktop-sdk.bst:components/groff.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/berkeleydb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
config:
  install-commands:
    (>):
    - mv %{install-root}/var/run %{install-root}
