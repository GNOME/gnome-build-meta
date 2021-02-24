kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libchamplain.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/clutter-gtk.bst
- sdk/clutter.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst
