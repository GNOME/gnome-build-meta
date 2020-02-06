kind: autotools
sources:
- kind: tar
  url: http://openldap.org/software/download/OpenLDAP/openldap-release/openldap-2.4.45.tgz
  ref: cdd6cffdebcd95161a73305ec13fc7a78e9707b46ca9f84fb897cd5626df3824
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
