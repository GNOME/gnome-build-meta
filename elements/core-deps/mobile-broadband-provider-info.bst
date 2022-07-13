kind: autotools

sources:
- kind: tar
  url: gnome_downloads:mobile-broadband-provider-info/20220511/mobile-broadband-provider-info-20220511.tar.xz
  ref: 75f93e886661f0359832c3e2823cafa86e74e4080425b8ce0a9c3b0d0ab2a774
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
