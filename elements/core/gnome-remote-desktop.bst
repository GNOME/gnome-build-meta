kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-remote-desktop.git
  track: master
  ref: 46.alpha-0-g0188ce92f101de6ff103c94616cb737efa39b256

build-depends:
- core-deps/nv-codec-headers.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/LibVNCServer.bst
- sdk/glib.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/libei.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libfdk-aac.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dtests=false
