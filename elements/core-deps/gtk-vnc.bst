kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gtk-vnc.git
  track: master
  submodules:
    subprojects/keycodemapdb:
      checkout: true
      url: gitlab_com:keycodemap/keycodemapdb.git
build-depends:
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --with-gtk=3.0
    --enable-vala
    --disable-werror
