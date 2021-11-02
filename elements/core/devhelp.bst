kind: meson
sources:
- kind: tar
  url: gnome_downloads:devhelp/40/devhelp-40.1.tar.xz
  ref: 3e8ad93e8484b44823cae474a2fd9dce22ed6ecd25655592cead7b1b68326bbb
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/amtk.bst
- sdk/appstream-glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/gtk-doc.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
