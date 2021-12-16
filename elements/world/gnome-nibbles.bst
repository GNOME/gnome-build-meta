kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-nibbles.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/gsound.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/librsvg.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
