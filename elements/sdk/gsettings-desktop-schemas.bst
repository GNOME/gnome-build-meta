kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/46/gsettings-desktop-schemas-46.beta.tar.xz
  ref: 6290ef45eee5baa7a98e2246e9a09288b944c96ea0467e4913d0287415f9c5af
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
