kind: autotools

sources:
- kind: git_repo
  url: github:alsa-project/alsa-utils.git
  track: v*
  ref: v1.2.15.2-0-ged63d017e0e94dbae9223caf0dae94fc94db18ca

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst
