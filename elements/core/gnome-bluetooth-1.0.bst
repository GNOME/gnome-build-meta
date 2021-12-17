kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-bluetooth.git
  track: gnome-3-34

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gsound.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  # Disable sendto as the binary is not namespaced
  # and overlaps with gnome-bluetooth-2.0
  meson-local: >-
    -Dgtk_doc=true
    -Dsendto=false
