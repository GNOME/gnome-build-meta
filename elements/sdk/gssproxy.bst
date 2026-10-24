kind: autotools

sources:
- kind: git_repo
  url: github:gssapi/gssproxy.git
  track: "v*.*.*"
  ref: v0.9.3-0-gb3f0827e190a6025f8510961fa6531ed60dcf644

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
