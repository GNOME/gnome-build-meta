kind: meson
sources:
- kind: tar
  url: gnome_downloads:devhelp/40/devhelp-40.alpha.tar.xz
  ref: ecda47d08501ffbfd55fc7a744e48e69d4b97b9830cae2ad0a79255d8385bbd2
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
