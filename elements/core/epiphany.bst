kind: meson

sources:
- kind: git_repo
  url: gnome:epiphany.git
  track: main
  ref: 51.beta-246-ge030b76a5a07e19e2a7d6b04ee0cbd5cc6bf48d3

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:components/grep.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gcr.bst
- sdk/gdk-pixbuf.bst
- sdk/glib-networking.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/json-glib.bst
- sdk/libadwaita.bst
- sdk/libportal.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/webkitgtk.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
