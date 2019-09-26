kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gcr.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
