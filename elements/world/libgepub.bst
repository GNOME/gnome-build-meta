kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgepub.git
  track: master
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
