kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-contacts.git
  track: main
  ref: 50.0-11-g3655cfbfeeb0ff2f46b1b6f025b78e27e53ceb7d

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/blueprint-compiler.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst

depends:
- core-deps/folks.bst
- core-deps/gnome-online-accounts.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libgee.bst
- sdk/libglycin-gtk4.bst
- sdk/libportal.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/libqrencode.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
