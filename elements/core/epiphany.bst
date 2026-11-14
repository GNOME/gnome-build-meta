kind: meson

sources:
- kind: git_repo
  url: gnome:epiphany.git
  track: main
  ref: 51.beta-270-g60a4572f8e72734eb1d42cc8464f961de8e6d3a6

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
