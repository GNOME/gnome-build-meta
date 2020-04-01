kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-software/3.36/gnome-software-3.36.0.tar.xz
  ref: daa9b5979db69d429bfb150db57247ead1450f6fa93ce2bc142c8ca2c00cab2c
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/eos-updater.bst
- core-deps/polkit.bst
- core-deps/flatpak.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- core-deps/libgudev.bst
- core-deps/liboauth.bst
- core-deps/malcontent.bst
- core-deps/xmlb.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dfwupd=false
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
