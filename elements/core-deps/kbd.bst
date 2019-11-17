kind: autotools

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/linux-pam.bst
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst

sources:
- kind: git_tag
  url: github_com:legionus/kbd.git
  track: master
  track-tags: true
  match:
  - v*
