kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.24.0.tar.xz
  ref: 2e4ad1503fe482ceb5a83cf70ac9cd42f37eb718555a4d6844fe4c59a9214407
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
- arch == "i686" or arch == "arm":
    environment:
      CFLAGS: '-g1'
      CXXFLAGS: '-g1'
public:
  cpe:
    product: webkitgtk+
