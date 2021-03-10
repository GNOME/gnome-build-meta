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
- sdk/vala.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/cyrus-sasl.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dintrospection=enabled
    -Dpulseaudio=enabled
    -Dsasl=enabled
    -Dwith-vala=enabled
