kind: meson

sources:
- kind: git_repo
  url: github:Skyb0rg007/defused.git
  track: '*.*'
  ref: v0.1-0-ga08abe7bf1f2182a03449ee0671229f93207eb28

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/libseccomp.bst
- freedesktop-sdk.bst:components/fuse3.bst

public:
  bst:
    overlap-whitelist:
    - "%{bindir}/fusermount3"
    - "%{debugdir}%{bindir}/fusermount3.debug"

  initial-script:
    script: |
      #!/bin/bash
      sysroot="${1}"
      chmod 0755 "${sysroot}%{bindir}/fusermount3"
