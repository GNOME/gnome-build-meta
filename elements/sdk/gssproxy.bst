kind: autotools

sources:
- kind: git_tag
  url: github:gssapi/gssproxy.git
  track: 3d8601e5ed4da42617191976bfd961ead6cab55d

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/krb5.bst

variables:
  autogen: |
    autoreconf -fvi
  conf-local: >-
    --enable-always-interpose
    --enable-only-gss-module
    --with-gpp-default-behavior=REMOTE_FIRST
    --with-manpages=no
