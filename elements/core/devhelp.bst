kind: meson

sources:
- kind: tar
  url: gnome_downloads:devhelp/40/devhelp-40.0.tar.xz
  ref: 4db6d853de5f4ef2eb749ede6e32c726c5fba13cd75558fa604c1a562e26267f
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
