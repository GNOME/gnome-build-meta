kind: autotools

sources:
- kind: git_tag
  url: github:alsa-project/alsa-utils.git
  track: v1.2.8
  ref: v1.2.8-0-ga61edeb0d441f9540445f544043c75f75febe301

depends:
- freedesktop-sdk.bst:components/alsa-plugins.bst
- freedesktop-sdk.bst:components/alsa-lib.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
