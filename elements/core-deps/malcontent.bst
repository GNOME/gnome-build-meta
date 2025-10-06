kind: meson

sources:
- kind: git_repo
  url: freedesktop:ignapk/malcontent.git
  ref: 2ce6faa6f403337c4e297e0673391bf606f7c641
- kind: git_module
  url: gnome:gvdb.git
  ref: 4758f6fb7f889e074e13df3f914328f3eecb1fd3
  path: subprojects/gvdb
- kind: remote
  url: tinycdb:tinycdb-0.81.tar.gz
  ref: 469de2d445bf54880f652f4b6dc95c7cdf6f5502c35524a45b2122d70d47ebc2
  directory: subprojects/packagecache
- kind: git_repo
  url: gnome_gitlab:pwithnall/libgsystemservice.git
  ref: f4c5764652b5f347347b459ee011e4f02b29c3a0
  directory: subprojects/libgsystemservice

build-depends:
- core-deps/glib-testing.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/systemd.bst

depends:
- core/gnome-desktop.bst
- core-deps/accountsservice.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- sdk/pygobject.bst
- core-deps/libgsystemservice.bst
