kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:World/Phosh/phosh.git
  track: main
- kind: git_module
  url: gnome:libgnome-volume-control.git
  path: subprojects/gvc
- kind: git_module
  url: gnome_gitlab:World/Phosh/libcall-ui.git
  path: subprojects/libcall-ui

build-depends:
- freedesktop-sdk.bst:components/wayland-protocols.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/callaudiod.bst
- core-deps/feedbackd.bst
- core-deps/upower.bst
- core/gnome-desktop.bst
- sdk/gcr-3.bst
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
