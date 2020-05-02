kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/phodav.git
  track: master
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/avahi.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
