kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/41/gnome-remote-desktop-41.0.tar.xz
  ref: 6a9bc8b1c68746f4a3aac1fe74c44a72e26a8bb4be1f1ca73027705acb652b5e
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
