kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-initial-setup.git
  track: master
  ref: 51.beta-14-gdf7d7c75d65279a249fef2e647d040567294ad27

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

# In nightly we enable homed in single-user, so we don't need malcontent.
# See https://gitlab.gnome.org/Teams/STF/homed/-/work_items/44
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
