kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.24.2.tar.xz
  ref: 019cb1f0d05bf6148b72c7a85734bcd006388a1c14132843ef9a1b2cb7b4321c
- kind: patch
  path: files/webkitgtk/gtk-doc-introspection-cross-compiling.patch
- kind: local
  path: files/webkitgtk/toolchain.i386
- kind: local
  path: files/webkitgtk/toolchain.arm
depends:
- sdk/at-spi2-core.bst
- sdk/brotli.bst
- sdk/enchant-2.bst
- sdk/geoclue.bst
- sdk/gobject-introspection.bst
- filename: sdk/gst-libav.bst
  type: runtime
- filename: sdk/gst-plugins-bad.bst
  type: runtime
- sdk/gst-plugins-base.bst
- filename: sdk/gst-plugins-good.bst
  type: runtime
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
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  webkitgtk_toolchain: ''
  (?):
    - arch == "i686":
        webkitgtk_toolchain: -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=toolchain.i386
    - arch == "arm":
        webkitgtk_toolchain: -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=toolchain.arm
  cmake-local: -DPORT=GTK -DENABLE_PLUGIN_PROCESS_GTK2=OFF -DUSE_OPENJPEG=OFF %{webkitgtk_toolchain}
(?):
- arch == "i686":
    environment:
      CFLAGS: '%{flags_i686} -g1'
      CXXFLAGS: '%{flags_i686} -g1'
- arch == "arm":
    environment:
      CFLAGS: '%{flags_arm} -g1'
      CXXFLAGS: '%{flags_arm} -g1'
public:
  cpe:
    product: webkitgtk+
