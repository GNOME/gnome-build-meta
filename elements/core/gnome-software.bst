kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-software/45/gnome-software-45.0.tar.xz
  ref: 61f42c2fd4d19b894a2484f691369032dc8b2a32a014ce6ca4d02c4fa4f75a14
build-depends:
- sdk/gtk-doc.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/eos-updater.bst
- core-deps/fwupd.bst
- core-deps/glib-testing.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- core-deps/liboauth.bst
- core-deps/malcontent.bst
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
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dfwupd=true
    -Dpolkit=true
    -Dflatpak=true
    -Deos_updater=true
    -Dpackagekit=false
