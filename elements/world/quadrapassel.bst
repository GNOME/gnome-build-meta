kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/quadrapassel.git
  track: master

build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/gtk+-3.bst
- sdk/librsvg.bst
- world/libmanette.bst
- freedesktop-sdk.bst:bootstrap-import.bst
