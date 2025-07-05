# Copied from https://gitlab.com/freedesktop-sdk/freedesktop-sdk/-/merge_requests/20164/diffs
# FIXME: Replace it with the element from the junction once we update to 25.08 
# Make sure to do so only when we can also create extra users easily.
# ie, avoid creating the /etc/passwd and /etc/group files by hand like
# the upstream element does
kind: script

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  commands:
  - |
    mkdir -p "%{install-root}/tmp"
    mkdir -p "%{install-root}/var/tmp"
    mkdir -p "%{install-root}/sys"
    mkdir -p "%{install-root}/dev"
    mkdir -p "%{install-root}/proc"
    mkdir -p "%{install-root}/etc"
    mkdir -p "%{install-root}/root"

public:
  initial-script:
    script: |
      #!/bin/sh
      sysroot="${1}"
      chmod 1777 ${sysroot}/tmp
      chmod 1777 ${sysroot}/var/tmp
      chmod 700 ${sysroot}/root

