kind: manual

depends:
- gnomeos/ldconfig-always.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/pkg-config.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    systemdsystemunitdir="$(pkg-config --var systemdsystemunitdir systemd)"
    unit="ldconfig.service"
    mkdir -p "%{install-root}${systemdsystemunitdir}/${unit}.d/"
    cat <<EOF >"%{install-root}${systemdsystemunitdir}/${unit}.d/after-tmpfiles.conf"
    [Unit]
    After=systemd-tmpfiles-setup.service
    EOF
