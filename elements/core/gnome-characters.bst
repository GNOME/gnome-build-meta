kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-characters.git
  track: master
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gjs.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
