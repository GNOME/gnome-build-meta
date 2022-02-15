kind: meson

sources:
- kind: tar
  url: gnome_downloads:gsettings-desktop-schemas/42/gsettings-desktop-schemas-42.beta.tar.xz
  ref: 2f0370609f3e9aa09da029339120024f80749346673d11f651d5ccfc76e4af36
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
