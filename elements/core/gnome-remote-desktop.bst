kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/0.1/gnome-remote-desktop-0.1.9.tar.xz
  ref: f2266da78b41453ecd3512aecf0a29deb70cbead7a446fc8dac025108b09d0cf
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
    -Drdp_unicode_input=false
