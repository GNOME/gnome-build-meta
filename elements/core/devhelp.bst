kind: meson
sources:
- kind: tar
  url: gnome_downloads:devhelp/3.38/devhelp-3.38.1.tar.xz
  ref: 4da8f5951b3a5920df73d057beab3ebe1855a75eae41208a9d89305a6b114a8f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/amtk.bst
- sdk/WebKitGTK.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:bootstrap-import.bst
