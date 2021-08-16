kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/40/gnome-remote-desktop-40.1.tar.xz
  ref: 9afa6e525570a372093f9730338270903894f3b1f9f8a9df5f57836ea1d29de9
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
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Drdp_unicode_input=false
