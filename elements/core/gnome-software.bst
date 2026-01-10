kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-software/49/gnome-software-49.3.tar.xz
  ref: f646db2f12bcf408372b6b49ae91099fce52d0eac762cea2311a8c8a4dff9d00
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
