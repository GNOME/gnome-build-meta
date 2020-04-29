kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/devhelp.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/amtk.bst
- sdk/WebKitGTK.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/appstream-glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
