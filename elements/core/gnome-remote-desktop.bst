kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/40/gnome-remote-desktop-40.rc.tar.xz
  ref: 7628ffdd5f16590b7da6b61140dac0635a9aa4136e5d56fbe676fe91fb608e40

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
