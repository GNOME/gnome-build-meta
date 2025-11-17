kind: manual

sources:
- kind: git_repo
  url: github:SELinuxProject/refpolicy.git
  track: 'RELEASE_2_*'
  ref: RELEASE_2_20250923-0-g004ca3252282b52f525c24f3c874bf7ecf724be1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/m4.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/util-linux.bst
- gnomeos-deps/selinux-semodule-utils.bst
- gnomeos-deps/selinux-checkpolicy.bst

runtime-depends:
- gnomeos-deps/selinux-policycoreutils.bst
- gnomeos-deps/selinux-policycoreutils-python.bst

variables:
  configuration: >-
    DISTRO=org.gnome.os
    SYSTEMD=y
    UBAC=n
    DIRECT_INITRC=n
    MONOLITHIC=n
    MLS_CATS=1024
    MCS_CATS=1024
    UNK_PERMS=allow

config:
  build-commands:
  - |
    make bare
  - |
    make conf %{configuration}
  - |
    make all %{configuration}

  install-commands:
  - |
    make install install-headers install-docs DESTDIR='%{install-root}' %{configuration}

  - |
    cat >'%{install-root}/etc/selinux/config' <<EOF
    SELINUX=permissive
    SELINUXTYPE=refpolicy
    EOF

public:
  bst:
    integration-commands:
    - mkdir -p /var/lib/selinux
    - semodule -P --disable_dontaudit -s refpolicy -i /usr/share/selinux/refpolicy/*.pp
    - semanage boolean --modify --on systemd_tmpfiles_manage_all
    - rm -rf /var/lib/selinux
