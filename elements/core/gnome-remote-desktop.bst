kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/49/gnome-remote-desktop-49.rc.tar.xz
  ref: e025c66ebd49bb95491436f37b1720e3c6cb31f97c5456966a85b13e8e06c726
build-depends:
- core-deps/nv-codec-headers.bst
- freedesktop-sdk.bst:components/spirv-tools.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:components/shaderc.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/LibVNCServer.bst
- core-deps/fdk-aac-free.bst
- core-deps/freerdp.bst
- sdk/glib.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/libei.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dtests=false
