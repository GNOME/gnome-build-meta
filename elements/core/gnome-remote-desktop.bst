kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/42/gnome-remote-desktop-42.4.tar.xz
  ref: 4d4d233efa2ffa5467306a3cc3ce8b7ba23252d42d4b1272d5cac9d5de45cb9a
build-depends:
- core-deps/nv-codec-headers.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/LibVNCServer.bst
- core-deps/freerdp.bst
- sdk/glib.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/pipewire.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:bootstrap-import.bst
