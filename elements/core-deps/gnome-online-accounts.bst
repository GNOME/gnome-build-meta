kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.39/gnome-online-accounts-3.39.92.tar.xz
  ref: cf49159383482103ba2e4fff98658cabb0e4f12a396b582d69c2aff7b6abc7d4
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gcr.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libsecret.bst
- sdk/librest.bst
- sdk/libsoup.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:bootstrap-import.bst
