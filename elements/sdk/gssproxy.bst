kind: autotools

sources:
- kind: tar
  url: github_files:gssapi/gssproxy/releases/download/v0.9.2/gssproxy-0.9.2.tar.gz
  ref: 1fe43ea1b03d19e0f1eda3c82ba5bd8bba04e9bc7e629c117dad094d0a6fc1de

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
