kind: manual

sources:
- kind: git_repo
  url: gitlab:sdm845-mainline/firmware-oneplus-sdm845.git
  track: refs/heads/prepackaged-release
  ref: 3e31a0c3e5a061645c09f805387b49fa9d35acbf
- kind: local
  path: files/gnomeos/postmarketos-firmware
  directory: local

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 -t '%{install-root}%{indep-libdir}/systemd/system' local/postmarketos-firmware.service
    mkdir -p '%{install-root}%{indep-libdir}/systemd/system/sysinit.target.wants'
    ln -s ../postmarketos-firmware.service '%{install-root}%{indep-libdir}/systemd/system/sysinit.target.wants/postmarketos-firmware.service'
    install -Dm755 -t '%{install-root}%{libexecdir}' local/postmarketos-firmware-path

  - |
    mkdir -p '%{install-root}%{indep-libdir}'
    cp -rT lib/firmware '%{install-root}%{indep-libdir}/firmware'
    cp -rT usr/share '%{install-root}/usr/share'

  - |
    %{install-extra}
