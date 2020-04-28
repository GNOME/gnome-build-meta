kind: meson
sources:
- kind: tar
  url: gnome_downloads:dconf-editor/3.36/dconf-editor-3.36.2.tar.xz
  ref: edcec8867f018589125f177407760c642bbbb52fe5122daac5905223d6b3e1c7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/appstream-glib.bst
- sdk/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
