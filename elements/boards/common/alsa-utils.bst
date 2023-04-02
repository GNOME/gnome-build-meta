kind: autotools

sources:
- kind: git_tag
  url: github:alsa-project/alsa-utils.git
  track: v1.2.8
  ref: v1.2.8-0-ga61edeb0d441f9540445f544043c75f75febe301

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- freedesktop-sdk.bst:components/alsa-lib.bst
