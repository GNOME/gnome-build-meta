kind: meson
sources:
- kind: git_tag
  url: gnome:phodav.git
  track: master
  ref: v3.0-13-gb8b902343c9820e300d62d966fe5d40aada97ae0
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/avahi-gobject.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
