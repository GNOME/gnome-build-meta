kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gcr/3.34/gcr-3.34.0.tar.xz
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
