kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-bluetooth.git
  track: master
- kind: patch
  path: files/gnome-bluetooth/0001-docs-use-gnomebt_api_name-for-the-gtk-doc-module-nam.patch
- kind: patch
  path: files/gnome-bluetooth/0002-meson-bump-gettext-package-suffix.patch

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
