kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:World/Phosh/phoc.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- world/wlroots.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libinput.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xwayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dembed-wlroots=disabled
