kind: meson

sources:
- kind: git_repo
  url: freedesktop:pwithnall/malcontent.git
  track: "*.*.*"
  ref: b57c8cf12847838e9a5668194eee4b048d7602b2
- kind: git_module
  url: gnome:gvdb.git
  path: subprojects/gvdb
  ref: 466fc22016cf0981424e7121557611942191992f
# Need to be updated manually until we get a meson wrap source
- kind: remote
  url: corpit:tinycdb/tinycdb-0.81.tar.gz
  ref: 469de2d445bf54880f652f4b6dc95c7cdf6f5502c35524a45b2122d70d47ebc2
  directory: subprojects/packagecache

build-depends:
- core-deps/glib-testing.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/accountsservice.bst
- core-deps/libgsystemservice.bst
- core/gnome-desktop.bst
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
