kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgepub.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/WebKitGTK.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
