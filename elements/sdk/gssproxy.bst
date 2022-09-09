kind: autotools

sources:
- kind: tar
  url: github_files:gssapi/gssproxy/releases/download/v0.9.1/gssproxy-0.9.1.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/krb5.bst

variables:
  conf-local: >-
    --enable-always-interpose
    --enable-only-gss-module
    --with-gpp-default-behavior=REMOTE_FIRST
    --with-initscript=none
    --with-manpages=no
    --with-socket-name=/run/flatpak/gssproxy/default.sock
