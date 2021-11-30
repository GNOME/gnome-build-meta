kind: meson

sources:
- kind: git_tag
  url: https://gitlab.gnome.org/GNOME/devhelp.git
  track: main

build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkit2gtk-4.0.bst
- freedesktop-sdk.bst:bootstrap-import.bst
