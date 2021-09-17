kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:World/Phosh/phoc.git
  track: master

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libinput.bst
- core-deps/wlroots.bst
- core/gnome-desktop.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libdrm.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/mesa-headers.bst
- freedesktop-sdk.bst:components/pixman.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/xwayland.bst

variables:
  meson-local: >-
    -Dembed-wlroots=disabled
