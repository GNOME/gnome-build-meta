kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgepub.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/libsoup.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
