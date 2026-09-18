kind: meson

sources:
- kind: git_repo
  url: gnome:phodav.git
  track: master
  ref: v3.0-28-g2ac0629324923a9882d74c665a27f1e311f9a3cb

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/avahi-gobject.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
