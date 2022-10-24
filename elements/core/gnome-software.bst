kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-software/43/gnome-software-43.1.tar.xz
  ref: c2675689ee77be11d8ff06aafa416c4cafc48d3811553a73ecf764bd6aff4470
build-depends:
- sdk/gtk-doc.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/AppStream.bst
- core-deps/eos-updater.bst
- core-deps/flatpak.bst
- core-deps/fwupd.bst
- core-deps/glib-testing.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- core-deps/liboauth.bst
- core-deps/malcontent.bst
- core-deps/xmlb.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dfwupd=true
    -Dpolkit=true
    -Dflatpak=true
    -Deos_updater=true
    -Dpackagekit=false
    -Dsoup2=true
