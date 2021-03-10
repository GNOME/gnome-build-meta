kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/retro-gtk.git
  track: master

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/clutter-gtk.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:bootstrap-import.bst
