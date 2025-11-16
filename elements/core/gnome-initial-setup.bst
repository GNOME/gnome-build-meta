kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:AdrianVovk/gnome-initial-setup.git
  track: homed
  ref: 50.0-10-g952d28e3e3aefe67bc0dd2d37a0be964d2b69d66

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

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
- core/gnome-keyring.bst
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
