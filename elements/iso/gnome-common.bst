kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-common.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/autoconf-archive.bst
public:
  bst:
    overlap-whitelist:
    - 'usr/share/aclocal/*.m4'
