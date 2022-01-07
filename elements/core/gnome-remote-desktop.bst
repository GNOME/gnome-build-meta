kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/41/gnome-remote-desktop-41.2.tar.xz
  ref: 10151e69b648c2247c5e33d9a2ef419f4e037ee5b2bae49e6ed6aca77eb1ba58
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
