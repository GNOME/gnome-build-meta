kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-contacts/50/gnome-contacts-50.alpha.tar.xz
  ref: c6156b2cc053206d45b5395fcb458545876e6251b1c7f0db926213ffb79f93ef
build-depends:
- sdk/blueprint-compiler.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/folks.bst
- core-deps/gnome-online-accounts.bst
- core-deps/libportal.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libgee.bst
- sdk/libglycin-gtk4.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libqrencode.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
