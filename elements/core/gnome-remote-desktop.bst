kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-remote-desktop/48/gnome-remote-desktop-48.rc.tar.xz
  ref: 47f0d9ec58e57d57377aeb3e9dd87d88b5a655948a0225e354570ff4cca5922a
build-depends:
- core-deps/nv-codec-headers.bst
- freedesktop-sdk.bst:components/spirv-tools.bst
- freedesktop-sdk.bst:components/vulkan-headers.bst
- freedesktop-sdk.bst:components/shaderc.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/freerdp.bst
- core-deps/LibVNCServer.bst
- sdk/glib.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/asciidoc.bst
- freedesktop-sdk.bst:components/dummy-gbm.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/libei.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libfdk-aac.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/polkit-gobject.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dtests=false
