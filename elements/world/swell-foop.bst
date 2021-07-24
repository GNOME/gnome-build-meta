kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/swell-foop.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gtk+-3.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
