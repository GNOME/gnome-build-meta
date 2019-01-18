kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtksourceview.git
  track: master
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
