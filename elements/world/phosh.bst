kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:World/Phosh/phosh.git
  track: main
  submodules:
    subprojects/gvc:
      checkout: true
      url: gnome:libgnome-volume-control.git
    subprojects/libcall-ui:
      checkout: true
      url: gnome_gitlab:World/Phosh/libcall-ui.git

build-depends:
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/callaudiod.bst
- core-deps/feedbackd.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gcr.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- sdk/libsecret.bst
- world/phoc.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
