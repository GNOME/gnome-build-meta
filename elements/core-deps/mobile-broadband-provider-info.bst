kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/mobile-broadband-provider-info.git
  track: master
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
