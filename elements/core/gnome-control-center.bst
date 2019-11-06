kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-control-center.git
  track: master
  submodules:
    subprojects/gvc:
      checkout: true
      url: gitlab_gnome_org:GNOME/libgnome-volume-control.git
    subprojets/libhandy:
      checkout: true
      url: purism:Librem5/libhandy.git
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/ModemManager.bst
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/colord-gtk.bst
- core-deps/colord.bst
- core-deps/gnome-online-accounts.bst
- core-deps/grilo.bst
- core-deps/gsound.bst
- core-deps/libgnomekbd.bst
- core-deps/libgtop.bst
- core-deps/libhandy.bst
- core-deps/libnma.bst
- core-deps/libwacom.bst
- core-deps/samba.bst
- core-deps/udisks2.bst
- core-deps/upower.bst
- core/cheese.bst
- core/gnome-bluetooth.bst
- core/gnome-color-manager.bst
- core/gnome-desktop.bst
- core/gnome-settings-daemon.bst
- sdk/adwaita-icon-theme.bst
- sdk/clutter-gtk.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/ibus.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddocumentation=true
