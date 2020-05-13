kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
config:
  options:
    target_arch: '%{arch}'
- kind: patch
  path: patches/0001-vm-prepare-image.sh-Add-setup-machine-id-to-systemd-.patch
