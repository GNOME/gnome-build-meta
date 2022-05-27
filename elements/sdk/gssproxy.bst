kind: autotools

sources:
- kind: tar
  url: github_files:gssapi/gssproxy/releases/download/v0.9.0/gssproxy-0.9.0.tar.gz
# When removing this patch, also remove the autoreconf stuff down below.
- kind: patch
  path: files/gssproxy/fix-build.patch

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
    --with-initscript=none
    --with-manpages=no
