kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-software/40/gnome-software-40.beta.tar.xz
  ref: 303323d3f05b4f7fed1b8e62ac65109fdf1ce4309bbe76915ff59de256e0968e
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
- sdk/libsoup.bst
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
