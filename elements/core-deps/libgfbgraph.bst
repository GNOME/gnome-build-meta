kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgfbgraph.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gnome-online-accounts.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk-deps/librest.bst
- freedesktop-sdk.bst:bootstrap-import.bst
