kind: meson

sources:
- kind: git_tag
  url: gnome_gitlab:jwestman/camera.git
  track: master

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- world/libaperture.bst
- freedesktop-sdk.bst:bootstrap-import.bst
