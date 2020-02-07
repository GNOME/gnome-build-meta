kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtksourceview.git
  track: 'gtksourceview-4-6'
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dinstall_tests=true
    -Dgtk_doc=true
