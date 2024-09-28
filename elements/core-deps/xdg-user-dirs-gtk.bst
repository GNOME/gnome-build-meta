kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-user-dirs-gtk.git
  track: master
  ref: 0.11-17-ga2848e0f179cec4754529ab509200be7a0de9ba5

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
