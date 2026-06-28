kind: autotools

sources:
- kind: git_repo
  url: github:gssapi/gssproxy.git
  track: "v*.*.*"
  ref: v0.9.2-0-g27f883ff3a75dc7b52d0b0bd692f9eeb8ee53338

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

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
