kind: meson

sources:
- kind: git_repo
  url: github:linux-nvme/nvme-cli.git
  track: 'v*'
  ref: v2.16-0-gfaf7326a2997dea91687fd3daa17fc405910a4c1

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/json-c.bst
- freedesktop-sdk.bst:components/libnvme.bst

config:
  install-commands:
    (>):
    - rm '%{install-root}%{sysconfdir}/nvme/discovery.conf'
    - rmdir '%{install-root}%{sysconfdir}/nvme'
