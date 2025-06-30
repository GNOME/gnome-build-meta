kind: cmake

sources:
- kind: tar
  url: freerdp:releases/freerdp-3.16.0.tar.xz
  ref: 93624312792b18227a0cdab67ace5634edb8bb92e4a9a793cef3b3c142b385cd
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- core-deps/pkcs11-helper.bst
- core-deps/cjson.bst
- sdk/krb5.bst
- freedesktop-sdk.bst:components/cups.bst
- freedesktop-sdk.bst:components/ffmpeg.bst
- freedesktop-sdk.bst:components/libpulse.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/openjpeg.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

# CLIENT_SDL is depending on webkit2gtk-4.0
# https://github.com/FreeRDP/FreeRDP/blob/87557b1e4ef636e18a7dea58f0cae76fa5dff4fb/client/SDL/aad/CMakeLists.txt#L42
variables:
  cmake-local: >-
    -DRDTK_FORCE_STATIC_BUILD=ON
    -DUWAC_FORCE_STATIC_BUILD=ON
    -DWITH_ADD=ON
    -DWITH_BINARY_VERSIONING=ON
    -DWITH_CHANNELS=ON
    -DWITH_CLIENT_CHANNELS=ON
    -DWITH_CUPS=ON
    -DWITH_DSP_FFMPEG=ON
    -DWITH_FFMPEG=ON
    -DWITH_JPEG=ON
    -DWITH_MANPAGES=ON
    -DWITH_PCSC=ON
    -DWITH_PKCS11=ON
    -DWITH_PULSE=ON
    -DWITH_SERVER_CHANNELS=ON
    -DWITH_SERVER=ON
    -DPKG_CONFIG_RELOCATABLE=OFF
    -DWITH_ALSA=OFF
    -DWITH_CLIENT_SDL=OFF
    -DWITH_FUSE=OFF
    -DWITH_SAMPLE=OFF
    -DWITH_X11=OFF
