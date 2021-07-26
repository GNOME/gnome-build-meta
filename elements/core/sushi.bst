kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/sushi.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/evince.bst
- sdk/gjs.bst
- sdk/gobject-introspection.bst
- sdk/gst-plugins-base.bst
- sdk/gtk+-3.bst
- sdk/gtksourceview-4.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:bootstrap-import.bst
