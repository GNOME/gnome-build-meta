kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-software/51/gnome-software-51.alpha.tar.xz
  ref: 3a3f47a71ee0887d9e35b01eadbebe73ac838b5b70aa139ce0233331f73f2f6b
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gtk-doc.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- core-deps/fwupd.bst
- core-deps/glib-testing.bst
- core-deps/gnome-online-accounts.bst
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
