kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/41/gnome-remote-desktop-41.1.tar.xz
  ref: c0e889b0ed811b11809bbefb17338494d8f52ff5120be6e3ffd3bae5a9e05fdf
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
