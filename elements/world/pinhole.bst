kind: meson

sources:
- kind: git_tag
  url: gitlab_gnome_org:jwestman/camera.git
  track: master

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libhandy.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- world/libaperture.bst
- freedesktop-sdk.bst:bootstrap-import.bst
