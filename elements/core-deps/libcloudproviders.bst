kind: meson

sources:
- kind: tar
  url: gnome_downloads:libcloudproviders/0.3/libcloudproviders-0.3.2.tar.xz
  ref: 24a9f3fffaf49f1d9d45d6ec35ba9f9e59a5a1040b51ce7835611131966c6819

build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
