kind: meson

sources:
- kind: tar
  url: gnome_downloads:gvfs/1.57/gvfs-1.57.2.tar.xz
  ref: f16bef8eca1fd6c117e85db011d21e915669790d55867349c5f1b291299e9585
build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libbluray.bst
- core-deps/libcdio-paranoia.bst
- core-deps/libgphoto2.bst
- core-deps/libimobiledevice.bst
- core-deps/libmtp.bst
- core-deps/libnfs.bst
- core-deps/msgraph.bst
- core-deps/plist.bst
- core-deps/samba.bst
- core-deps/udisks2.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgoogle=false

public:
  bst:
    split-rules:
      gvfs-client:
      - '%{includedir}'
      - '%{includedir}/**'
      - '%{libdir}/gio/**'
      - '%{libdir}/gvfs/libgvfscommon.so'
      - '%{debugdir}%{libdir}/gio/**'
      - '%{debugdir}%{libdir}/gvfs/libgvfscommon.so.debug'
      - '%{debugdir}/dwz/**'
      - '%{sourcedir}/%{element-name}/common/**'
      - '%{sourcedir}/%{element-name}/client/**'
