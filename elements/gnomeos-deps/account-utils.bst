kind: meson

sources:
- kind: git_repo
  url: github:thkukuk/account-utils.git
  track: v*
  ref: v1.4.0-0-g3914e08fba5f2b89644ef34330af96cf85d34098

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/systemd-libs.bst

runtime-depends:
- freedesktop-sdk.bst:components/shadow.bst

variables:
  meson-local: >-
    -Dselinux=disabled
    -Dman=disabled

config:
  install-commands:
    (>):
    - |
      rm -rf '%{install-root}%{indep-libdir}/pam.d'

public:
  bst:
    overlap-whitelist:
    - "%{bindir}/chage"
    - "%{bindir}/chfn"
    - "%{bindir}/chsh"
    - "%{bindir}/newuidmap"
    - "%{bindir}/newgidmap"
    - "%{bindir}/passwd"
    - "%{debugdir}%{bindir}/chage.debug"
    - "%{debugdir}%{bindir}/chfn.debug"
    - "%{debugdir}%{bindir}/chsh.debug"
    - "%{debugdir}%{bindir}/newuidmap.debug"
    - "%{debugdir}%{bindir}/newgidmap.debug"
    - "%{debugdir}%{bindir}/passwd.debug"

  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      for i in passwd chsh chfn chage; do
        chmod 0755 "${sysroot}%{bindir}/${i}"
      done
      setcap cap_setuid-ep "${sysroot}%{bindir}/newuidmap"
      setcap cap_setgid-ep "${sysroot}%{bindir}/newgidmap"

    integration-commands:
    - |
      for n in chfn chsh passwd; do
        sed -i 's/pam_unix[.]so/pam_unix_ng.so/g' "/sysroot/etc/pam.d/${n}" >"/sysroot/usr/lib/pam.d/pwupd-${n}"
      done
