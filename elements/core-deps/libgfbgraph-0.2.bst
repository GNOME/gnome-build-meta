kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/libgfbgraph.git
  track: stable-0.2.x
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/gnome-online-accounts.bst
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/librest.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
