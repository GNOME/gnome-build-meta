kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-online-accounts.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/librest.bst
- sdk/libsoup.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=true
