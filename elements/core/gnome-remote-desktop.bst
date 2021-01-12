kind: meson

sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-remote-desktop/0.1/gnome-remote-desktop-0.1.9.tar.xz

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/LibVNCServer.bst
- core-deps/freerdp.bst
- sdk/glib.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/pipewire.bst
- freedesktop-sdk.bst:bootstrap-import.bst
