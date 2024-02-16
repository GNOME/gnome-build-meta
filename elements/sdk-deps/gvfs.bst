kind: meson

sources:
- kind: git_repo
  url: gnome:gvfs.git
  track: master
  ref: 1.53.90-9-g54f1f40af195c3403322fa6808408e0a8199750d

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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dgoogle=false
    -Donedrive=false

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
