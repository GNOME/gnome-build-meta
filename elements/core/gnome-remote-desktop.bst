kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/41/gnome-remote-desktop-41.3.tar.xz
  ref: f66d8d901fecc6b1a5942b034ad64850bf955d688f72b6093f12f0f222cecc78
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
    -Dnvenc=false
