kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/dconf-editor.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
