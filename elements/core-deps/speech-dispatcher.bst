kind: autotools

sources:
- kind: git_repo
  url: github_files:brailcom/speechd.git
  track: '*.*.*'
  ref: 0.12.1-0-g6781ff1709eca1c3d7f748e5361a6aa157dd5f18

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/dotconf.bst
- core-deps/espeak-ng.bst
- sdk/glib.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/sndfile.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --with-espeak-ng
    --with-pulse
    --with-oss=no

config:
  install-commands:
    (>):
    - rm '%{install-root}%{infodir}/dir'
