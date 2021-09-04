kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/41/gnome-remote-desktop-41.rc.tar.xz
  ref: 568f81bc69ca1f9a9cc9f8749631a0db8cbaae36ded4d17099901714e719556d
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
