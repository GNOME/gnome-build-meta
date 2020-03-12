kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:openldap-2.4.45.tgz
  ref: cdd6cffdebcd95161a73305ec13fc7a78e9707b46ca9f84fb897cd5626df3824
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
