kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gsettings-desktop-schemas.git
  track: master

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
