kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/glade.git
  track: master
depends:
- sdk/WebKitGTK.bst
- sdk/pygobject.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: sdk/cantarell-fonts.bst
  type: runtime
- filename: sdk/adwaita-icon-theme.bst
  type: runtime
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
