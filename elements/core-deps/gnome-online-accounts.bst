kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-online-accounts/3.38/gnome-online-accounts-3.38.0.tar.xz
  ref: 3760ea78729b3038dda0c416b57bc2cbaafcc619eec6c5109654d747fad2418c
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
