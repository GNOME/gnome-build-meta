kind: meson

sources:
- kind: git_tag
  url: github_com:flatpak/libportal.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gtk-doc.bst
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/gtk+-3.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- sdk/glib.bst

variables:
  meson-local: >-
    -Dbackends="gtk3, gtk4"
