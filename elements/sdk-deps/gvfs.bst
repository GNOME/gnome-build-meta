kind: meson

sources:
- kind: tar
  url: gnome_downloads:gvfs/1.48/gvfs-1.48.0.tar.xz
  ref: 3834797751c4e9f8729e774dee142a474f3361cbc0c12b647606433793eae939
build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/libbluray.bst
- core-deps/libcdio-paranoia.bst
- core-deps/libgdata.bst
- core-deps/libgphoto2.bst
- core-deps/libimobiledevice.bst
- core-deps/libmtp.bst
- core-deps/libnfs.bst
- core-deps/plist.bst
- core-deps/samba.bst
- core-deps/udisks2.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

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
