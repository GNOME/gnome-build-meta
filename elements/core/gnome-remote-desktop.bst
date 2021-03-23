kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/40/gnome-remote-desktop-40.0.tar.xz
  ref: 6c0a0faa17891f8c5d232cd85ddec0618fa0ef76c39f952ef431abfadaf29f7e

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
