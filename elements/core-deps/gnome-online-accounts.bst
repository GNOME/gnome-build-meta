kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.40/gnome-online-accounts-3.40.0.tar.xz
  ref: 585c4f979f6f543b77bfdb4fb01eb18ba25c2aec5b7866c676d929616fb2c3fa
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
