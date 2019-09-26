kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/adwaita-icon-theme.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
