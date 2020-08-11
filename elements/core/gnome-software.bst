kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-software/3.36/gnome-software-3.36.1.tar.xz
  ref: 4d4d66c70780539f204f96088da4fcb02371b0a8147f9266ce632ca784bf6f6e
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/eos-updater.bst
- core-deps/flatpak.bst
- core-deps/gnome-online-accounts.bst
- core-deps/gspell.bst
- core-deps/liboauth.bst
- core-deps/malcontent.bst
- core-deps/xmlb.bst
- core/gnome-desktop.bst
- core/sysprof.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libsecret.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
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
