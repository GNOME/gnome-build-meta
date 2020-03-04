kind: meson
sources:
- kind: tar
  url: gnome_downloads:file-roller/3.35/file-roller-3.35.92.tar.xz
  ref: f336803f0a2ff0959967417874299530130ae39f8231adf17b62e18c0e880bc1
build-depends:
- freedesktop-sdk.bst:components/itstools.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
