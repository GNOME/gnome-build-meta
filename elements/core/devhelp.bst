kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/devhelp.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/amtk.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
