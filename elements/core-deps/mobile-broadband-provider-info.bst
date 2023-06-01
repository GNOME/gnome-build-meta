kind: autotools

sources:
- kind: git_tag
  url: gnome:mobile-broadband-provider-info.git
  track: main
  ref: 20230416-4-g27f0f71eac51f782f7001d20975d510ea4f2054b

build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
