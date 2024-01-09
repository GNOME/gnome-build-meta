kind: meson

sources:
- kind: tar
  url: gnome_downloads:dconf-editor/45/dconf-editor-45.0.1.tar.xz
  ref: 1180297678eedae6217cc514a2638c187d2f1d1ef2720cb9079b740c429941dd
build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/dconf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
