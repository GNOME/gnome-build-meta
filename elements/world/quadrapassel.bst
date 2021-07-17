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
- core-deps/clutter-gtk.bst
- core-deps/clutter.bst
- core-deps/gsound.bst
- sdk/gtk+-3.bst
- sdk/libmanette.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
