kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-remote-desktop.git
  track: master
  ref: 45.alpha-0-g55855f26bbba3e95e32c791bb55914903e699c46

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
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libfdk-aac.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:bootstrap-import.bst
