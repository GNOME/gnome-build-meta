kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.21.92.tar.xz
  ref: 8c073494b1060a5e0b713c2705f558dfdc833e69d11ff4f681f04bc4956dd16e
depends:
- sdk/at-spi2-core.bst
- sdk/brotli.bst
- sdk/enchant-2.bst
- sdk/geoclue.bst
- sdk/gobject-introspection.bst
- sdk/gst-libav.bst
- sdk/gst-plugins-bad.bst
- sdk/gst-plugins-base.bst
- sdk/gst-plugins-good.bst
- sdk/gtk+-3.bst
- sdk/libnotify.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- sdk/pango.bst
- sdk/woff2.bst
- filename: desktop/hyphen.bst
  junction: freedesktop-sdk.bst
- filename: desktop/wayland.bst
  junction: freedesktop-sdk.bst
- filename: desktop/xorg-lib-xt.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  webkitgtk_target: ''
  (?):
    - arch == "i386":
        webkitgtk_target: "-DCMAKE_SYSTEM_PROCESSOR=i586"
    - arch == "arm":
        webkitgtk_target: "-DCMAKE_SYSTEM_PROCESSOR=arm -DENABLE_JIT=OFF"
  cmake-local: -DPORT=GTK -DENABLE_PLUGIN_PROCESS_GTK2=OFF %{webkitgtk_target}
  max-jobs: 2
