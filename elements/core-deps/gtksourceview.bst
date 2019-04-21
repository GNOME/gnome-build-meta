kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gtksourceview.git
  track: master
depends:
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >
    -Dinstall_tests=true
    -Dgtk_doc=true
