kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/tepl.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/amtk.bst
- core-deps/gtksourceview.bst
- core-deps/uchardet.bst # FIXME: doesn't exist
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
