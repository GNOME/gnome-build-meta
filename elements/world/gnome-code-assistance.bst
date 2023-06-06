kind: autotools
sources:
- kind: git_repo
  url: gnome:gnome-code-assistance.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
