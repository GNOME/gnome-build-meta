kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-software/49/gnome-software-49.alpha.tar.xz
  ref: e27cd338a48a9b4108d86d1152f78c2c6cb62f1d2f8e9d75fcd3a514cccdeca0
build-depends:
- sdk/gtk-doc.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/fwupd.bst
- core-deps/glib-testing.bst
- core-deps/gnome-online-accounts.bst
- core-deps/liboauth.bst
- core-deps/malcontent.bst
- core-deps/snapd-glib.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/appstream.bst
- freedesktop-sdk.bst:components/flatpak.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/libxmlb.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

runtime-depends:
- core-deps/gnome-app-list.bst

variables:
  meson-local: >-
    -Dfwupd=true
    -Dpolkit=true
    -Dflatpak=true
    -Deos_updater=true
    -Dpackagekit=false
    -Dsnap=true
    -Dsystemd-sysupdate=true
