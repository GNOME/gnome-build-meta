kind: cmake
sources:
- kind: tar
  url: webkitgtk_org:webkitgtk-2.23.3.tar.xz
# When upgrading to next release:
# * Remove bug-193903.patch (including from files/)
# * Add dependency on sdk/openjpeg.bst
# * Delete this comment
# * Remember to create a merge request rather than pushing directly :)
- kind: patch
  path: files/webkitgtk/bug-193903.patch
- kind: patch
  path: files/webkitgtk/gtk-doc-introspection-cross-compiling.patch
- kind: local
  path: files/webkitgtk/toolchain.i686
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
- filename: base/gperf.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/python2.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/ruby.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-cmake.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  webkitgtk_toolchain: ''
  (?):
    - arch == "i686":
        webkitgtk_toolchain: -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=toolchain.i686
    - arch == "arm":
        webkitgtk_toolchain: -DCMAKE_TOOLCHAIN_FILE=toolchain.arm
  cmake-local:
    -DPORT=GTK
    -DENABLE_PLUGIN_PROCESS_GTK2=OFF
    -DENABLE_BUBBLEWRAP_SANDBOX=OFF
    %{webkitgtk_toolchain}
(?):
- arch == "i686":
    environment:
      CFLAGS: '-g1'
      CXXFLAGS: '-g1'
public:
  cpe:
    product: webkitgtk+
