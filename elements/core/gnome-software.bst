kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-software/40/gnome-software-40.0.tar.xz
  ref: e447894cee8be886b7b3f8e4db5f42d11e36a97030959d2d7a789c7fb28d2e51
build-depends:
- core/sysprof.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/appstream.bst
- core-deps/eos-updater.bst
- core-deps/flatpak.bst
- core-deps/fwupd.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- core-deps/liboauth.bst
- core-deps/malcontent.bst
- core-deps/xmlb.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dfwupd=true
    -Dvalgrind=false
    -Dpolkit=true
    -Dflatpak=true
    -Deos_updater=true
    -Dpackagekit=false
config:
  configure-commands:
    (<):
    #FIXME: fix eos-updater and gnome-software upstream to use the "osname"
    - |
      sed -i 's/Endless OS/GNOME OS/' plugins/eos-updater/gs-plugin-eos-updater.c po/*.po
