kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-initial-setup.git
  track: master
  ref: 51.alpha-0-g7e8da984302c5b737e393918b77b53393c30ea28

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- core-deps/NetworkManager.bst
- core-deps/accountsservice.bst
- core-deps/geocode-glib.bst
- core-deps/gnome-online-accounts.bst
- core-deps/ibus-daemon.bst
- core-deps/libgweather.bst
- core-deps/libnma.bst
- core-deps/librest.bst
- core-deps/upower.bst
- core/gdm.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/webkitgtk-6.0.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pwquality.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

# In nightly we enable homed which doesn't yet work with malcontent
(?):
- channel == "stable":
    depends:
      (>):
      - core-deps/malcontent.bst

variables:
  parental_controls: "enabled"
  (?):
  - channel == "nightly":
      parental_controls: "disabled"
  meson-local: >-
    -Dparental_controls="%{parental_controls}"
