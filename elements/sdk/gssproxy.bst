kind: autotools

sources:
- kind: git_tag
  url: github:gssapi/gssproxy.git
  track: 43ef3f5dad1bee8c8226c31af88159798a1ec35b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/krb5.bst

variables:
  autogen: |
    autoreconf -fvi
  conf-local: >-
    --enable-only-gss-module
    --with-gpp-default-behavior=REMOTE_FIRST
    --with-manpages=no
