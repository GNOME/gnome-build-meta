kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-software/3.35/gnome-software-3.35.91.tar.xz
  ref: bbfb9a4d65f88b7aaf0dfb576b46b211bbeb3d637d77637860ee380291ad0dbe
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
