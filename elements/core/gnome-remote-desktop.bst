kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/40/gnome-remote-desktop-40.2.tar.xz
  ref: e1a0e2c8620d89fc59bb3aa1b65037123641ea886108be3a8f66f87e11a19961

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

variables:
  meson-local: >-
    -Drdp=false
