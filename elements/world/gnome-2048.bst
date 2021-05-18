kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-2048.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/clutter.bst
- core-deps/clutter-gtk.bst
- sdk/gtk+-3.bst
- sdk/libgee.bst
- sdk/librsvg.bst
- world/libgnome-games-support.bst
- freedesktop-sdk.bst:bootstrap-import.bst
