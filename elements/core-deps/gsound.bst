kind: autotools
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gsound.git
  track: master
- kind: patch
  path: files/gsound/automake-fix.patch
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libcanberra.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-gtk-doc
