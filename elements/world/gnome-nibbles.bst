kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-nibbles.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/librsvg.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
