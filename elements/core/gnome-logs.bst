kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-logs.git
  track: master
  ref: 49.0-3-g0a374fdaf3f61e7a2b84b59ad0f43ec322e51843

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
