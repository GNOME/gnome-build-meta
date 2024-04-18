kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-software.git
  track: main
  ref: 50.0-97-g5debf132ac280e5c2d0889c722c9655964af7bae
- kind: git_module
  url: gnome_gitlab:mwleeds/gnome-pwa-list.git
  path: subprojects/gnome-pwa-list
  ref: 48ac9f7ed6a639eab7648f3e3b19105694eaf306
- kind: patch
  path: patches/gnome-software/sysupdate-components.patch

build-depends:
- sdk/gtk-doc.bst
- sdk/sysprof-minimal.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/fwupd.bst
- core-deps/glib-testing.bst
- core-deps/gnome-online-accounts.bst
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

# In nightly we enable homed which doesn't yet work with malcontent
(?):
- channel == "stable":
    depends:
      (>):
      - core-deps/malcontent.bst

variables:
  malcontent: "true"
  (?):
  - channel == "nightly":
      malcontent: "false"

  meson-local: >-
    -Dfwupd=true
    -Dpolkit=true
    -Dflatpak=true
    -Deos_updater=true
    -Dpackagekit=false
    -Dsnap=true
    -Dsystemd-sysupdate=true
    -Dmalcontent="%{malcontent}"
