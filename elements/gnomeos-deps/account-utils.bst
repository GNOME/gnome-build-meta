kind: meson

sources:
- kind: git_repo
  url: github:thkukuk/account-utils.git
  track: v*
  ref: v1.4.0-0-g3914e08fba5f2b89644ef34330af96cf85d34098

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/linux-pam.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/systemd-libs.bst

variables:
  meson-local: >-
    -Dselinux=disabled
    -Dman=disabled

config:
  install-commands:
    (>):
    - |
      rm -rf '%{install-root}%{indep-libdir}/pam.d'

    - |
      install -dm755 "%{install-root}%{indep-libdir}/pam.d"

      for n in chfn chsh passwd; do
        sed 's/systemd-auth/pwupd-systemd-auth/g' "%{sysconfdir}/pam.d/${n}" >"%{install-root}%{indep-libdir}/pam.d/pwupd-${n}"
      done

      sed 's/pam_unix[.]so/pam_unix_ng.so/g' "%{sysconfdir}/pam.d/system-auth" >"%{install-root}%{indep-libdir}/pam.d/pwupd-system-auth"

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
