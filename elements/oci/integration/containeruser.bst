kind: manual

sources:
- kind: local
  path: files/oci

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 containeruser-sysusers.conf "%{install-root}${sysusersdir}/containeruser.conf"
    - "%{install-extra}"
