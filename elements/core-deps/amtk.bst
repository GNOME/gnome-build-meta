kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/amtk.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
