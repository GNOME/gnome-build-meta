kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-contacts.git
  track: main
  ref: 49.0-5-g046b159cf9634ab36cac42c81391a21b5394a87f

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
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libqrencode.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
