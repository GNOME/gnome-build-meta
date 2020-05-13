kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk.git
  track: master
- kind: patch
  path: patches/0001-vm-prepare-image.sh-Add-setup-machine-id-to-systemd-.patch
config:
  options:
    target_arch: '%{arch}'
